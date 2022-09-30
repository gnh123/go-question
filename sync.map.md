## sync.Map

sync.Map是目前用得比较多的数据结构，官方出品，使用时不用加锁。下面来分析下原理

有几个问题
1. 为啥读不用加锁?
2. 为啥写不用加锁?
3. 在读写，同时进行时如何临界情况?
4. 在读删除同时进行时如何处理临界情况?
5. 读和删除时同时进行时如何处理临界情况?

总结:  
sync.Map的设置类似mysql前面套个redis。readOnly等于redis的作用，
这里的缓存一致性如何解决的呢？
主要分三点:
1. 新元素的添加
新元素的添加都是给到脏map里面，缓存不命中到一定次数(说明缓存太小)，把脏map升级到readOnly
2. 新元素的删除或者修改
readOnly和dirty都挂有同一个指针的value值，如果readOnly里面删除会把指针置为nil， 这样只要修改一处，readOnly或者脏map都能得到这个变化
3. 从新构建脏map
每次脏map都是从readOnly里面构建的，过滤掉删除的元素

readOnly为啥快？  
主要依赖于对一个map没有并发读写，普通的map不需要加锁，由于sync.Map的读写分离设计，多个go程对map读也没问题
value实现为atomic.Value也是为不加锁, 先挂有指针，再通过指针的atomic实现原子操作，不需要加锁

## Store函数
先分析下Store函数

```go
func (m *Map) dirtyLocked() {
  // m.dirty有值，直接返回
	if m.dirty != nil {
		return
	}

	read, _ := m.read.Load().(readOnly)
	m.dirty = make(map[any]*entry, len(read.m))
	for k, e := range read.m {
    // 从read.m里面拷贝值给m.dirty
		if !e.tryExpungeLocked() {
			m.dirty[k] = e
		}
	}
}

func (e *entry) tryExpungeLocked() (isExpunged bool) {
	p := atomic.LoadPointer(&e.p)
	for p == nil {
    // e.p为nil，给个expunged的指针地址
    // for 循环是为了防止有并发操作
		if atomic.CompareAndSwapPointer(&e.p, nil, expunged) {
			return true
		}
		p = atomic.LoadPointer(&e.p)
	}
	return p == expunged
}

func (e *entry) unexpungeLocked() (wasExpunged bool) {
	return atomic.CompareAndSwapPointer(&e.p, expunged, nil)
}

// Store sets the value for a key.
func (m *Map) Store(key, value any) {
  // 通过原子变量获取readOnly
	read, _ := m.read.Load().(readOnly)
  // 这个key在read.m有值，通过tryStore函数替换，该函数内部使用了cas的方式替换值，不需要单独加锁
	if e, ok := read.m[key]; ok && e.tryStore(&value) {
		return
	}

  // 加锁区域
	m.mu.Lock()
  // 获取readOnly
	read, _ = m.read.Load().(readOnly)
  // read里面有这个key
	if e, ok := read.m[key]; ok {
    // 如果e里面的值被删除过一次, 把e设置为nil
		if e.unexpungeLocked() {
			// The entry was previously expunged, which implies that there is a
			// non-nil dirty map and this entry is not in it.
      // m.dirty保存一份, 一条保存的指令
			m.dirty[key] = e
		}
    // e再保存value的值
		e.storeLocked(&value)
	} else if e, ok := m.dirty[key]; ok {
    // m.dirty里面有，read.m里面没有，再保存一份, 一条保存指令
		e.storeLocked(&value)
	} else {
		if !read.amended {
			// We're adding the first new key to the dirty map.
			// Make sure it is allocated and mark the read-only map as incomplete.
			m.dirtyLocked()
			m.read.Store(readOnly{m: read.m, amended: true})
		}
		m.dirty[key] = newEntry(value)
	}
	m.mu.Unlock()
}
```
总结:
如果readonly map里面有这个key，直接通过atomic保存值
没加锁之前在readonly没有找到，先加锁，再尝试一次从readonly map看下有无这个key，有的话，如果值是expunged，则给m.dirty也保存一份, e也通过原子
加锁之后在readonly也没有，从m.dirty里面找下
m.dirty里面也没有, 如果第一次先拷贝一份到m.dirty, 给


## Load 函数
```go
func (m *Map) missLocked() {
	m.misses++
	if m.misses < len(m.dirty) {
		return
	}
	m.read.Store(readOnly{m: m.dirty})
	m.dirty = nil
	m.misses = 0
}

// Load returns the value stored in the map for a key, or nil if no
// value is present.
// The ok result indicates whether value was found in the map.
func (m *Map) Load(key any) (value any, ok bool) {
  // 先获取readOnly
	read, _ := m.read.Load().(readOnly)
  // 从读map里面获取这个key
	e, ok := read.m[key]
	if !ok && read.amended {
    // 没有，加个锁
		m.mu.Lock()
		// Avoid reporting a spurious miss if m.dirty got promoted while we were
		// blocked on m.mu. (If further loads of the same key will not miss, it's
		// not worth copying the dirty map for this key.)
    // 再读一次
		read, _ = m.read.Load().(readOnly)
		e, ok = read.m[key]
		if !ok && read.amended {
      // 没有
			e, ok = m.dirty[key]
      // m.dirty map里面再看下

			// Regardless of whether the entry was present, record a miss: this key
			// will take the slow path until the dirty map is promoted to the read
			// map.
      // 记录下miss次数, 如果miss的次数等脏map的长度，就把脏map转移到readonly map里面
			m.missLocked()
		}
		m.mu.Unlock()
	}
	if !ok {
		return nil, false
	}
  // 返回e.load()
	return e.load()
}

func (e *entry) load() (value any, ok bool) {
	p := atomic.LoadPointer(&e.p)
	if p == nil || p == expunged {
		return nil, false
	}
	return *(*any)(p), true
}
```

总结:  
先从读map里面获取值, 没有就从dirty里面获取, 这都没有就真的没有, 如果执行流程是第一次调用Store， 
然后调用missLocked也会把m.dirty里面的map转移到readOnly里面, 原来的m.dirty置为空


## LoadOrStore
```go
func (e *entry) tryLoadOrStore(i any) (actual any, loaded, ok bool) {
  // value是否有值，无值返回
	p := atomic.LoadPointer(&e.p)
	if p == expunged {
		return nil, false, false
	}
	if p != nil {
		return *(*any)(p), true, true
	}

	// Copy the interface after the first load to make this method more amenable
	// to escape analysis: if we hit the "load" path or the entry is expunged, we
	// shouldn't bother heap-allocating.
	ic := i
	for {
    // 有值，利用cas替换
		if atomic.CompareAndSwapPointer(&e.p, nil, unsafe.Pointer(&ic)) {
			return i, false, true
		}
		p = atomic.LoadPointer(&e.p)
		if p == expunged {
			return nil, false, false
		}
		if p != nil {
			return *(*any)(p), true, true
		}
	}
}

func (m *Map) LoadOrStore(key, value any) (actual any, loaded bool) {
	// Avoid locking if it's a clean hit.
  // 如果readOnly里面有值
	read, _ := m.read.Load().(readOnly)
	if e, ok := read.m[key]; ok {
    // 获取或者替换成功，走起
		actual, loaded, ok := e.tryLoadOrStore(value)
		if ok {
			return actual, loaded
		}
	}

	m.mu.Lock()
	read, _ = m.read.Load().(readOnly)
	if e, ok := read.m[key]; ok {
    // readonly里面有
		if e.unexpungeLocked() {
			m.dirty[key] = e
		}
		actual, loaded, _ = e.tryLoadOrStore(value)
	} else if e, ok := m.dirty[key]; ok {
    // dirty里面有
		actual, loaded, _ = e.tryLoadOrStore(value)
		m.missLocked()
	} else {
		if !read.amended {
			// We're adding the first new key to the dirty map.
			// Make sure it is allocated and mark the read-only map as incomplete.
      // 给脏map赋初始值
			m.dirtyLocked()
			m.read.Store(readOnly{m: read.m, amended: true})
		}
    没这个key, 直接赋值
		m.dirty[key] = newEntry(value)
		actual, loaded = value, false
	}
	m.mu.Unlock()

	return actual, loaded
}
```

## LoadAndDelete
删除是先找readOnly， 找不到就dirty里面找, 如果在dirty里面找到，清理下map的key
最后把entry里面的p置为空指针，调用的是cas指令
```go

func (e *entry) delete() (value any, ok bool) {
	for {
		p := atomic.LoadPointer(&e.p)
		if p == nil || p == expunged {
			return nil, false
		}
		if atomic.CompareAndSwapPointer(&e.p, p, nil) {
			return *(*any)(p), true
		}
	}
}

// LoadAndDelete deletes the value for a key, returning the previous value if any.
// The loaded result reports whether the key was present.
func (m *Map) LoadAndDelete(key any) (value any, loaded bool) {
	read, _ := m.read.Load().(readOnly)
	e, ok := read.m[key]
	if !ok && read.amended {
		m.mu.Lock()
		read, _ = m.read.Load().(readOnly)
		e, ok = read.m[key]
		if !ok && read.amended {
			e, ok = m.dirty[key]
			delete(m.dirty, key)
			// Regardless of whether the entry was present, record a miss: this key
			// will take the slow path until the dirty map is promoted to the read
			// map.
			m.missLocked()
		}
		m.mu.Unlock()
	}
	if ok {
		return e.delete()
	}
	return nil, false
}

// Delete deletes the value for a key.
func (m *Map) Delete(key any) {
	m.LoadAndDelete(key)
}
```

## Range
Range很简单，就是脏map比readOnly的map新就移过来，
后面就是无锁遍历readOnly
```go
func (m *Map) Range(f func(key, value any) bool) {
	// We need to be able to iterate over all of the keys that were already
	// present at the start of the call to Range.
	// If read.amended is false, then read.m satisfies that property without
	// requiring us to hold m.mu for a long time.
	read, _ := m.read.Load().(readOnly)
	if read.amended {
		// m.dirty contains keys not in read.m. Fortunately, Range is already O(N)
		// (assuming the caller does not break out early), so a call to Range
		// amortizes an entire copy of the map: we can promote the dirty copy
		// immediately!
    // 加锁
		m.mu.Lock()
		read, _ = m.read.Load().(readOnly)
		if read.amended {
      // 把脏map的值称到m里面
			read = readOnly{m: m.dirty}
			m.read.Store(read)
			m.dirty = nil
			m.misses = 0
		}
		m.mu.Unlock()
	}

  // 无锁遍历
	for k, e := range read.m {
		v, ok := e.load()
		if !ok {
			continue
		}
		if !f(k, v) {
			break
		}
	}
}
```
