## map delete

go version=1.19.1

map是go内置的数据结构，提供高速k/v存储访问，底层使用hashtable实现，对于这块代码也有一些疑问
1. map delete的执行流程
3. map 重新rehashing的执行流程
4. map是挂链，还是其它方式解决冲突的？

## map delete的流程

1. 先查找
2. 删除key/value
3. 重置下tophash的状态，emptyOne表示这前槽位没有元素，emptyRest表示之后都没有元素，可以快速退出
```go

package main

func main() {
	m := make(map[string]bool)
	m["1"] = true
	m["2"] = true
	m["3"] = true

	delete(m, "3")
}
```

```go
func mapdelete_faststr(t *maptype, h *hmap, ky string) {
	if raceenabled && h != nil {
		callerpc := getcallerpc()
		racewritepc(unsafe.Pointer(h), callerpc, abi.FuncPCABIInternal(mapdelete_faststr))
	}
	if h == nil || h.count == 0 {
		return
	}
	if h.flags&hashWriting != 0 {
		fatal("concurrent map writes")
	}

	key := stringStructOf(&ky)
	hash := t.hasher(noescape(unsafe.Pointer(&ky)), uintptr(h.hash0))

	// Set hashWriting after calling t.hasher for consistency with mapdelete
	h.flags ^= hashWriting

	bucket := hash & bucketMask(h.B)
	if h.growing() {
		growWork_faststr(t, h, bucket)
	}
	b := (*bmap)(add(h.buckets, bucket*uintptr(t.bucketsize)))
	bOrig := b
	top := tophash(hash)
search:
	for ; b != nil; b = b.overflow(t) {
		for i, kptr := uintptr(0), b.keys(); i < bucketCnt; i, kptr = i+1, add(kptr, 2*goarch.PtrSize) {
			k := (*stringStruct)(kptr)
      // 过滤长度，tophash值不相等的
			if k.len != key.len || b.tophash[i] != top {
				continue
			}
      // k.str地址指针相同 或者指向的内容相等就可以往下走
			if k.str != key.str && !memequal(k.str, key.str, uintptr(key.len)) {
				continue
			}
			// Clear key's pointer.
			k.str = nil
      // 获取val的地址
			e := add(unsafe.Pointer(b), dataOffset+bucketCnt*2*goarch.PtrSize+i*uintptr(t.elemsize))
			if t.elem.ptrdata != 0 {
				memclrHasPointers(e, t.elem.size)
			} else {
				memclrNoHeapPointers(e, t.elem.size)
			}
			b.tophash[i] = emptyOne
			// If the bucket now ends in a bunch of emptyOne states,
			// change those to emptyRest states.
			if i == bucketCnt-1 {
				if b.overflow(t) != nil && b.overflow(t).tophash[0] != emptyRest {
          // 后面还有元素，结束本次删除操作, tophash的状态是emptyOne
					goto notLast
				}
			} else {
				if b.tophash[i+1] != emptyRest {
          // 后面还有元素，结束本次删除操作，tophash的状态是emptyOne
					goto notLast
				}
			}

      // 后面都没有元素了，把tophash的状态置为emptyRest, 这样在查找或者别的操作可以快速退出
			for {
				b.tophash[i] = emptyRest
				if i == 0 {
					if b == bOrig {
						break // beginning of initial bucket, we're done.
					}
					// Find previous bucket, continue at its last entry.
					c := b
					for b = bOrig; b.overflow(t) != c; b = b.overflow(t) {
					}
					i = bucketCnt - 1
				} else {
					i--
				}
				if b.tophash[i] != emptyOne {
					break
				}
			}
		notLast:
      修改下元素个数
			h.count--
			// Reset the hash seed to make it more difficult for attackers to
			// repeatedly trigger hash collisions. See issue 25237.
			if h.count == 0 {
				h.hash0 = fastrand()
			}
			break search
		}
	}

	if h.flags&hashWriting == 0 {
		fatal("concurrent map writes")
	}
	h.flags &^= hashWriting
}
```
