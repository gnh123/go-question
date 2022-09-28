
## map access
go version=1.19.1

map是go内置的数据结构，提供高速k/v存储访问，底层使用hashtable实现，对于这块代码也有一些疑问
1. map get的执行流程
2. map delete的执行流程
3. map 重新rehashing的执行流程
4. map是挂链，还是其它方式解决冲突的？

## map get的执行流程

先构造一段go代码

```go
package main

import "fmt"

func main() {
	m := make(map[string]uint16)
	m["hello"] = 0
	v := m["hello"]
	fmt.Println(v)

	key2 := "hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello"
	key := "hellohellohellohellohellohellohellohellohellohelloaaaaahellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello"
	key3 := "hellohellohellohellohellohellohellohellohellohellobbbbbhellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello"

	fmt.Println(len(key2), len(key), len(key3))
	m[key2] = 1
	m[key] = 3
	m[key3] = 4

	v = m[key3]
	fmt.Println(v)

	v = m[key]
	fmt.Println(v)

	v = m[key2]
	fmt.Println(v)
}
```

这里举的例子key是string类型，map对于这个类型有个优化版本位于map_faststr.go文件中。
map不同的类型有多个版本的set/get/delete, 这里主要分析下string类型

1. 对于小key，长度小于32的。先比较长度，再比较指针地址，最后指向那块地址的内存区域
2. 对于大key, 长度大于32的，先比较地址，开头5个字节，最后5个字节，如果遇到第二次遇到相似串就到dohash逻辑

总结:  
先根据tophash找到有值索引，再比较是否是需要的key(比如长度，指针，memequal), 找到就 add(...) 偏移量的计算, 对就是这个地址。
```go
func mapaccess1_faststr(t *maptype, h *hmap, ky string) unsafe.Pointer {
	if raceenabled && h != nil {
		callerpc := getcallerpc()
		racereadpc(unsafe.Pointer(h), callerpc, abi.FuncPCABIInternal(mapaccess1_faststr))
	}
	if h == nil || h.count == 0 {
		return unsafe.Pointer(&zeroVal[0])
	}
	if h.flags&hashWriting != 0 {
		fatal("concurrent map read and map write")
	}
	key := stringStructOf(&ky)
	if h.B == 0 {
		// One-bucket table.
		b := (*bmap)(h.buckets)
		if key.len < 32 {
			// short key, doing lots of comparisons is ok
			for i, kptr := uintptr(0), b.keys(); i < bucketCnt; i, kptr = i+1, add(kptr, 2*goarch.PtrSize) {
				k := (*stringStruct)(kptr)
        // 先比较长度, 判断下b.tophash[i]是否为空
				if k.len != key.len || isEmpty(b.tophash[i]) {
          // 如果为空说明没找到
					if b.tophash[i] == emptyRest {
						break
					}
          // 不为空继续往下找
					continue
				}

        // 地址指针相同，或者指针那块区域的内容相同
				if k.str == key.str || memequal(k.str, key.str, uintptr(key.len)) {
          // 找到,返回value, 跳过tophash, 跳过8个key， 跳过前面的value就是需要的地址了
					return add(unsafe.Pointer(b), dataOffset+bucketCnt*2*goarch.PtrSize+i*uintptr(t.elemsize))
				}
			}
      // 没找到
			return unsafe.Pointer(&zeroVal[0])
		}
		// long key, try not to do more comparisons than necessary
		keymaybe := uintptr(bucketCnt)
		for i, kptr := uintptr(0), b.keys(); i < bucketCnt; i, kptr = i+1, add(kptr, 2*goarch.PtrSize) {
			k := (*stringStruct)(kptr)
      // 比较长度， 根据b.tophash判断i是否为空
			if k.len != key.len || isEmpty(b.tophash[i]) {
				if b.tophash[i] == emptyRest {
          没找到
					break
				}
				continue
			}
      // 指针相同，直接返回值
			if k.str == key.str {
				return add(unsafe.Pointer(b), dataOffset+bucketCnt*2*goarch.PtrSize+i*uintptr(t.elemsize))
			}
      // 长串开头4个字节是否相同
			// check first 4 bytes
			if *((*[4]byte)(key.str)) != *((*[4]byte)(k.str)) {
				continue
			}

      // 长串最后4个字节是否相同
			// check last 4 bytes
			if *((*[4]byte)(add(key.str, uintptr(key.len)-4))) != *((*[4]byte)(add(k.str, uintptr(key.len)-4))) {
				continue
			}

      // 如果有相似串，像开头，末尾4个相同这种，第二次遇到就到dohash那个逻辑里面比较
			if keymaybe != bucketCnt {
				// Two keys are potential matches. Use hash to distinguish them.
				goto dohash
			}
			keymaybe = i
		}
    // 找到最后一个位置
		if keymaybe != bucketCnt {
			k := (*stringStruct)(add(unsafe.Pointer(b), dataOffset+keymaybe*2*goarch.PtrSize))
      // 比较那块内存块里面的内容
			if memequal(k.str, key.str, uintptr(key.len)) {
				return add(unsafe.Pointer(b), dataOffset+bucketCnt*2*goarch.PtrSize+keymaybe*uintptr(t.elemsize))
			}
		}
    // 没找到
		return unsafe.Pointer(&zeroVal[0])
	}
dohash:
  // 计算hash量
	hash := t.hasher(noescape(unsafe.Pointer(&ky)), uintptr(h.hash0))
	m := bucketMask(h.B)
  // 找到对应的槽位
	b := (*bmap)(add(h.buckets, (hash&m)*uintptr(t.bucketsize)))
  // 这在扩容过程中，看下oldbuckets
	if c := h.oldbuckets; c != nil {
		if !h.sameSizeGrow() {
			// There used to be half as many buckets; mask down one more power of two.
			m >>= 1
		}
    // 重新计算槽位
		oldb := (*bmap)(add(c, (hash&m)*uintptr(t.bucketsize)))
		if !evacuated(oldb) {
			b = oldb
		}
	}
	top := tophash(hash)
  // 有冲突挂链的，遍历下overflow的地址
	for ; b != nil; b = b.overflow(t) {
    // 遍历本bmap里面8个元素
		for i, kptr := uintptr(0), b.keys(); i < bucketCnt; i, kptr = i+1, add(kptr, 2*goarch.PtrSize) {
			k := (*stringStruct)(kptr)
      // 长度不等，或者top值不等，过滤掉
			if k.len != key.len || b.tophash[i] != top {
				continue
			}

      // 指针地址相同，或者那块内存的量相同，对，就是我们需要的
			if k.str == key.str || memequal(k.str, key.str, uintptr(key.len)) {
				return add(unsafe.Pointer(b), dataOffset+bucketCnt*2*goarch.PtrSize+i*uintptr(t.elemsize))
			}
		}
	}

  //没有找到
	return unsafe.Pointer(&zeroVal[0])
}
```
