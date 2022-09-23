## 对slice调用append,是如何实现的？

go version=1.19.1

golang的代码是调用append，很常见的一个操作
```go
package main

func main() {
	s := append([]string{}, "hello", "world")
	_ = s
}
```

从汇编里面可以得知调用的的是runtime包下面的growslice函数
```
	0x0038 00056 (append-slice.go:4)	MOVD	$type.string(SB), R0
	0x0040 00064 (append-slice.go:4)	MOVD	ZR, R2
	0x0044 00068 (append-slice.go:4)	MOVD	R2, R3
	0x0048 00072 (append-slice.go:4)	MOVD	$2, R4
	0x004c 00076 (append-slice.go:4)	PCDATA	$1, ZR
	0x004c 00076 (append-slice.go:4)	CALL	runtime.growslice(SB)
```
调用append，实际就是调用growslice分配一个需要的内存
* old 是append第一个参数的slice
* cap 是cap(old) + 还要新加的容量, 这也解释了 cap > doublecap直接把 cap 赋值给newcap
```go
func growslice(et *_type, old slice, cap int) slice {
	if raceenabled {
		callerpc := getcallerpc()
		racereadrangepc(old.array, uintptr(old.len*int(et.size)), callerpc, abi.FuncPCABIInternal(growslice))
	}
	if msanenabled {
		msanread(old.array, uintptr(old.len*int(et.size)))
	}
	if asanenabled {
		asanread(old.array, uintptr(old.len*int(et.size)))
	}

	if cap < old.cap {
		panic(errorString("growslice: cap out of range"))
	}

	if et.size == 0 {
		// append should not create a slice with nil pointer but non-zero len.
		// We assume that append doesn't need to preserve old.array in this case.
		return slice{unsafe.Pointer(&zerobase), old.len, cap}
	}

	newcap := old.cap
	doublecap := newcap + newcap
	if cap > doublecap {
		newcap = cap
	} else {
		const threshold = 256
		if old.cap < threshold {
			newcap = doublecap
		} else {
			// Check 0 < newcap to detect overflow
			// and prevent an infinite loop.
			for 0 < newcap && newcap < cap {
				// Transition from growing 2x for small slices
				// to growing 1.25x for large slices. This formula
				// gives a smooth-ish transition between the two.
				newcap += (newcap + 3*threshold) / 4
			}
			// Set newcap to the requested cap when
			// the newcap calculation overflowed.
			if newcap <= 0 {
				newcap = cap
			}
		}
	}

	var overflow bool
	var lenmem, newlenmem, capmem uintptr
	// Specialize for common values of et.size.
	// For 1 we don't need any division/multiplication.
	// For goarch.PtrSize, compiler will optimize division/multiplication into a shift by a constant.
	// For powers of 2, use a variable shift.
	switch {
	case et.size == 1:
		lenmem = uintptr(old.len)
		newlenmem = uintptr(cap)
		capmem = roundupsize(uintptr(newcap))
		overflow = uintptr(newcap) > maxAlloc
		newcap = int(capmem)
	case et.size == goarch.PtrSize:
		lenmem = uintptr(old.len) * goarch.PtrSize
		newlenmem = uintptr(cap) * goarch.PtrSize
		capmem = roundupsize(uintptr(newcap) * goarch.PtrSize)
		overflow = uintptr(newcap) > maxAlloc/goarch.PtrSize
		newcap = int(capmem / goarch.PtrSize)
	case isPowerOfTwo(et.size):
		var shift uintptr
		if goarch.PtrSize == 8 {
			// Mask shift for better code generation.
			shift = uintptr(sys.Ctz64(uint64(et.size))) & 63
		} else {
			shift = uintptr(sys.Ctz32(uint32(et.size))) & 31
		}
		lenmem = uintptr(old.len) << shift
		newlenmem = uintptr(cap) << shift
		capmem = roundupsize(uintptr(newcap) << shift)
		overflow = uintptr(newcap) > (maxAlloc >> shift)
		newcap = int(capmem >> shift)
	default:
		lenmem = uintptr(old.len) * et.size
		newlenmem = uintptr(cap) * et.size
		capmem, overflow = math.MulUintptr(et.size, uintptr(newcap))
		capmem = roundupsize(capmem)
		newcap = int(capmem / et.size)
	}

	// The check of overflow in addition to capmem > maxAlloc is needed
	// to prevent an overflow which can be used to trigger a segfault
	// on 32bit architectures with this example program:
	//
	// type T [1<<27 + 1]int64
	//
	// var d T
	// var s []T
	//
	// func main() {
	//   s = append(s, d, d, d, d)
	//   print(len(s), "\n")
	// }
	if overflow || capmem > maxAlloc {
		panic(errorString("growslice: cap out of range"))
	}

	var p unsafe.Pointer
	if et.ptrdata == 0 {
		p = mallocgc(capmem, nil, false)
		// The append() that calls growslice is going to overwrite from old.len to cap (which will be the new length).
		// Only clear the part that will not be overwritten.
		memclrNoHeapPointers(add(p, newlenmem), capmem-newlenmem)
	} else {
		// Note: can't use rawmem (which avoids zeroing of memory), because then GC can scan uninitialized memory.
		p = mallocgc(capmem, et, true)
		if lenmem > 0 && writeBarrier.enabled {
			// Only shade the pointers in old.array since we know the destination slice p
			// only contains nil pointers because it has been cleared during alloc.
			bulkBarrierPreWriteSrcOnly(uintptr(p), uintptr(old.array), lenmem-et.size+et.ptrdata)
		}
	}
	memmove(p, old.array, lenmem)

	return slice{p, old.len, newcap}
}
```

## 分析下内存分配的策略
要研究的代码就是如下, growslice的核心逻辑了
```go
	newcap := old.cap
	doublecap := newcap + newcap
	if cap > doublecap {
		newcap = cap
	} else {
		const threshold = 256
		if old.cap < threshold {
			newcap = doublecap
		} else {
			// Check 0 < newcap to detect overflow
			// and prevent an infinite loop.
			for 0 < newcap && newcap < cap {
				// Transition from growing 2x for small slices
				// to growing 1.25x for large slices. This formula
				// gives a smooth-ish transition between the two.
				newcap += (newcap + 3*threshold) / 4
			}
			// Set newcap to the requested cap when
			// the newcap calculation overflowed.
			if newcap <= 0 {
				newcap = cap
			}
		}
	}
```

有几个疑问
1.  何时触发 `cap > doublecap`的逻辑
2.  何时触发 `if old.cap < threshold`的逻辑
3.  何时触发 1.25x速率分配的逻辑

对于第1个疑问，构造了如下代码，growslice(type, old.cap=2，cap=7 (old.cap + 5), 满足`cap > doublecap`
为啥这么设计也很简单，如果不停地用翻倍或者加1.n%试探需要的实际容易，会产生n次的执行，没有现在这种做法高效

总结: 对于append函数来说，如果老的cap("hello" + "world")+新增部分("123", "456", "789", "abc", "def") = 7  > 2 * 2(old.cap) 就直接使用老的cap+新增部分，
下面的例子就是2 * 2 < 7 所以就就直接使用7了。

```go
package main

func main() {
	old := []string{"hello", "world"}
	new := append(old, "123", "456", "789", "abc", "def")
	_ = new
}
```

```go
newcap := old.cap
	doublecap := newcap + newcap
	if cap > doublecap {
		newcap = cap
	} else {
    // 省略
  }
```

对于第2个疑问，构造了如下代码
解决第2个疑问，也构造了一段go的代码，growslice(type, old.cap=2, cap=3) 满足 ``` old.cap < threshold```
总结: 对于cap(old.cap + 新增容易)小于两倍的old.cap，并且小于一个阈值，就使用翻倍策略, 简单来说就是小对象翻倍

```go
package main

func main() {
	old := []string{"hello", "world"}
	new := append(old, "1234")
	_ = new
}

```

```
	if cap > doublecap {
		//省略
	} else {
		const threshold = 256
		if old.cap < threshold {
			newcap = doublecap
		} else {
      // 省略
    }
```
