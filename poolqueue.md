## poolqueue
poolqueu是实现sync.Pool里面的一个无锁队列

无锁队列，装b道路上的一盏明灯。不会不好意思出门打招呼

## 疑问
如何实现无锁队列？
生产者就是各种atomic操作，只要保证单生产者和多个消费者共存没问题就行，多消费者实现就是load+cas 固定操作。

如何避免ABA问题?
没看到用版本号。可能跟一个线程只使用一个poolChain有关系。

```go

// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package sync

import (
	"sync/atomic"
	"unsafe"
)

// poolDequeue is a lock-free fixed-size single-producer,
// multi-consumer queue. The single producer can both push and pop
// from the head, and consumers can pop from the tail.
//
// It has the added feature that it nils out unused slots to avoid
// unnecessary retention of objects. This is important for sync.Pool,
// but not typically a property considered in the literature.
type poolDequeue struct {
	// headTail packs together a 32-bit head index and a 32-bit
	// tail index. Both are indexes into vals modulo len(vals)-1.
	//
	// tail = index of oldest data in queue
	// head = index of next slot to fill
	//
	// Slots in the range [tail, head) are owned by consumers.
	// A consumer continues to own a slot outside this range until
	// it nils the slot, at which point ownership passes to the
	// producer.
	//
	// The head index is stored in the most-significant bits so
	// that we can atomically add to it and the overflow is
	// harmless.
	headTail uint64
  // 高32位是head, 低32位是tail

	// vals is a ring buffer of interface{} values stored in this
	// dequeue. The size of this must be a power of 2.
	//
	// vals[i].typ is nil if the slot is empty and non-nil
	// otherwise. A slot is still in use until *both* the tail
	// index has moved beyond it and typ has been set to nil. This
	// is set to nil atomically by the consumer and read
	// atomically by the producer.
	vals []eface
}

type eface struct {
	typ, val unsafe.Pointer
}

const dequeueBits = 32

// dequeueLimit is the maximum size of a poolDequeue.
//
// This must be at most (1<<dequeueBits)/2 because detecting fullness
// depends on wrapping around the ring buffer without wrapping around
// the index. We divide by 4 so this fits in an int on 32-bit.
const dequeueLimit = (1 << dequeueBits) / 4

// dequeueNil is used in poolDequeue to represent interface{}(nil).
// Since we use nil to represent empty slots, we need a sentinel value
// to represent nil.
type dequeueNil *struct{}

// 解包，把高，低32位，解成head, tail两个变量
func (d *poolDequeue) unpack(ptrs uint64) (head, tail uint32) {
	const mask = 1<<dequeueBits - 1
	head = uint32((ptrs >> dequeueBits) & mask)
	tail = uint32(ptrs & mask)
	return
}

func (d *poolDequeue) pack(head, tail uint32) uint64 {
	const mask = 1<<dequeueBits - 1
	return (uint64(head) << dequeueBits) |
		uint64(tail&mask)
}

// pushHead adds val at the head of the queue. It returns false if the
// queue is full. It must only be called by a single producer.
func (d *poolDequeue) pushHead(val any) bool {
  // 一条指令获取两个值
	ptrs := atomic.LoadUint64(&d.headTail)
  // 解成两个变量
	head, tail := d.unpack(ptrs)
  // 判断下是否满了
	if (tail+uint32(len(d.vals)))&(1<<dequeueBits-1) == head {
		// Queue is full.
		return false
	}

  // 取得可以得到索引位置
	slot := &d.vals[head&uint32(len(d.vals)-1)]

	// Check if the head slot has been released by popTail.
  // 这个位置目前不能写
	typ := atomic.LoadPointer(&slot.typ)
	if typ != nil {
		// Another goroutine is still cleaning up the tail, so
		// the queue is actually still full.
		return false
	}

	// The head slot is free, so we own it.
  // 如果是空指针给个结构体类型指针
	if val == nil {
		val = dequeueNil(nil)
	}
  // 赋值
	*(*any)(unsafe.Pointer(slot)) = val

	// Increment head. This passes ownership of slot to popTail
	// and acts as a store barrier for writing the slot.
  // 修改下head
	atomic.AddUint64(&d.headTail, 1<<dequeueBits)
	return true
}

// popHead removes and returns the element at the head of the queue.
// It returns false if the queue is empty. It must only be called by a
// single producer.
func (d *poolDequeue) popHead() (any, bool) {
	var slot *eface
	for {
    // 先过滤队列为空的情况
		ptrs := atomic.LoadUint64(&d.headTail)
		head, tail := d.unpack(ptrs)
		if tail == head {
			// Queue is empty.
			return nil, false
		}

		// Confirm tail and decrement head. We do this before
		// reading the value to take back ownership of this
		// slot.
		head--
    // 临时变量--
		ptrs2 := d.pack(head, tail)
    // 利用cas，d.headTail, 就是这个调用者取得的，那就把head--
		if atomic.CompareAndSwapUint64(&d.headTail, ptrs, ptrs2) {
			// We successfully took back slot.
			slot = &d.vals[head&uint32(len(d.vals)-1)]
			break
		}
	}

  // 判断空值
	val := *(*any)(unsafe.Pointer(slot))
	if val == dequeueNil(nil) {
		val = nil
	}
	// Zero the slot. Unlike popTail, this isn't racing with
	// pushHead, so we don't need to be careful here.
	*slot = eface{}
  // 赋值
	return val, true
}

// popTail removes and returns the element at the tail of the queue.
// It returns false if the queue is empty. It may be called by any
// number of consumers.
func (d *poolDequeue) popTail() (any, bool) {
	var slot *eface
	for {
    // 取到head tail
		ptrs := atomic.LoadUint64(&d.headTail)
		head, tail := d.unpack(ptrs)
    // 一样就是空的, 空队列直接返回
		if tail == head {
			// Queue is empty.
			return nil, false
		}

		// Confirm head and tail (for our speculative check
		// above) and increment tail. If this succeeds, then
		// we own the slot at tail.
		ptrs2 := d.pack(head, tail+1)
    // cas执行成功说明, tail安全地往后移，
		if atomic.CompareAndSwapUint64(&d.headTail, ptrs, ptrs2) {
			// Success.
      // 把老位置的置取出来
			slot = &d.vals[tail&uint32(len(d.vals)-1)]
			break
		}
	}

	// We now own slot.
  // 如果是空值, 返回空指针
	val := *(*any)(unsafe.Pointer(slot))
	if val == dequeueNil(nil) {
		val = nil
	}

	// Tell pushHead that we're done with this slot. Zeroing the
	// slot is also important so we don't leave behind references
	// that could keep this object live longer than necessary.
	//
	// We write to val first and then publish that we're done with
	// this slot by atomically writing to typ.
  // 把这个solt的值置为空
	slot.val = nil
	atomic.StorePointer(&slot.typ, nil)
	// At this point pushHead owns the slot.

	return val, true
}

// poolChain is a dynamically-sized version of poolDequeue.
//
// This is implemented as a doubly-linked list queue of poolDequeues
// where each dequeue is double the size of the previous one. Once a
// dequeue fills up, this allocates a new one and only ever pushes to
// the latest dequeue. Pops happen from the other end of the list and
// once a dequeue is exhausted, it gets removed from the list.
type poolChain struct {
	// head is the poolDequeue to push to. This is only accessed
	// by the producer, so doesn't need to be synchronized.
	head *poolChainElt

	// tail is the poolDequeue to popTail from. This is accessed
	// by consumers, so reads and writes must be atomic.
	tail *poolChainElt
}

type poolChainElt struct {
	poolDequeue

	// next and prev link to the adjacent poolChainElts in this
	// poolChain.
	//
	// next is written atomically by the producer and read
	// atomically by the consumer. It only transitions from nil to
	// non-nil.
	//
	// prev is written atomically by the consumer and read
	// atomically by the producer. It only transitions from
	// non-nil to nil.
	next, prev *poolChainElt
}

func storePoolChainElt(pp **poolChainElt, v *poolChainElt) {
	atomic.StorePointer((*unsafe.Pointer)(unsafe.Pointer(pp)), unsafe.Pointer(v))
}

func loadPoolChainElt(pp **poolChainElt) *poolChainElt {
	return (*poolChainElt)(atomic.LoadPointer((*unsafe.Pointer)(unsafe.Pointer(pp))))
}

func (c *poolChain) pushHead(val any) {
	d := c.head
	if d == nil {
    // 初始化
		// Initialize the chain.
		const initSize = 8 // Must be a power of 2
		d = new(poolChainElt)
		d.vals = make([]eface, initSize)
		c.head = d
    // 原子写c.tail
		storePoolChainElt(&c.tail, d)
	}

  // 写成功就返回
	if d.pushHead(val) {
		return
	}

	// The current dequeue is full. Allocate a new one of twice
	// the size.
	newSize := len(d.vals) * 2
	if newSize >= dequeueLimit {
		// Can't make it any bigger.
		newSize = dequeueLimit
	}
  // 写不成功，创建一个2位固定长度的poolDequeue

  // 新节点的前驱指针批向head
	d2 := &poolChainElt{prev: d}
	d2.vals = make([]eface, newSize)
  // head 现在指向c2
	c.head = d2
  // 老节点的next指向新节点
  // d->d2
  // d<-d2
	storePoolChainElt(&d.next, d2)
  // 保存值
	d2.pushHead(val)
}

func (c *poolChain) popHead() (any, bool) {
	d := c.head
	for d != nil {
		if val, ok := d.popHead(); ok {
			return val, ok
		}
		// There may still be unconsumed elements in the
		// previous dequeue, so try backing up.
		d = loadPoolChainElt(&d.prev)
	}
	return nil, false
}

func (c *poolChain) popTail() (any, bool) {
	d := loadPoolChainElt(&c.tail)
	if d == nil {
		return nil, false
	}

  // poolChain 是双向链表，每个元素是poolDequeue(单生产者，多消费者)
	for {
    // 无锁队列修改值常规姿势，先
		// It's important that we load the next pointer
		// *before* popping the tail. In general, d may be
		// transiently empty, but if next is non-nil before
		// the pop and the pop fails, then d is permanently
		// empty, which is the only condition under which it's
		// safe to drop d from the chain.
		d2 := loadPoolChainElt(&d.next)

		if val, ok := d.popTail(); ok {
			return val, ok
		}

		if d2 == nil {
			// This is the only dequeue. It's empty right
			// now, but could be pushed to in the future.
			return nil, false
		}

		// The tail of the chain has been drained, so move on
		// to the next dequeue. Try to drop it from the chain
		// so the next pop doesn't have to look at the empty
		// dequeue again.
    // 这里只有消费者修改。如果多个go程调用，只有一个会调用成功
		if atomic.CompareAndSwapPointer((*unsafe.Pointer)(unsafe.Pointer(&c.tail)), unsafe.Pointer(d), unsafe.Pointer(d2)) {
			// We won the race. Clear the prev pointer so
			// the garbage collector can collect the empty
			// dequeue and so popHead doesn't back up
			// further than necessary.
      // 把元素的prev指针清掉。
			storePoolChainElt(&d2.prev, nil)
		}
		d = d2
	}
}
```
