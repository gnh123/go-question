## 使用copy函数发生了什么？

go version=1.19.1

在golang里面使用copy常见用法
```go
package main

func main() {
	s1 := make([]string, 2)
	s2 := []string{"hello", "world"}
	copy(s1, s2)
}
```

打出汇编看下重点
发现调用了typedslicecopy函数
```
	0x0088 00136 (copy-slice.go:5)	MOVD	R3, main.s2-112(SP)
	0x008c 00140 (copy-slice.go:5)	MOVD	R4, main.s2-104(SP)
	0x0090 00144 (copy-slice.go:5)	MOVD	R4, main.s2-96(SP)
	0x0094 00148 (copy-slice.go:6)	MOVD	main.s1-88(SP), R1
	0x0098 00152 (copy-slice.go:6)	MOVD	main.s1-80(SP), R2
	0x009c 00156 (copy-slice.go:6)	MOVD	$type.string(SB), R0
	0x00a4 00164 (copy-slice.go:6)	PCDATA	$1, ZR
	0x00a4 00164 (copy-slice.go:6)	CALL	runtime.typedslicecopy(SB)
```

typedslicecopy实现
总结：copy其实调用的是memmove，每个平台都使用对应平台汇编实现, 对于长度，dstLen和srcLen都是元素的个数
通过size := uintptr(n) * typ.size 转成字节数，最后一把memmove搞定
```go

func typedslicecopy(typ *_type, dstPtr unsafe.Pointer, dstLen int, srcPtr unsafe.Pointer, srcLen int) int {
	n := dstLen
	if n > srcLen {
		n = srcLen
	}
	if n == 0 {
		return 0
	}

	// The compiler emits calls to typedslicecopy before
	// instrumentation runs, so unlike the other copying and
	// assignment operations, it's not instrumented in the calling
	// code and needs its own instrumentation.
	if raceenabled {
		callerpc := getcallerpc()
		pc := abi.FuncPCABIInternal(slicecopy)
		racewriterangepc(dstPtr, uintptr(n)*typ.size, callerpc, pc)
		racereadrangepc(srcPtr, uintptr(n)*typ.size, callerpc, pc)
	}
	if msanenabled {
		msanwrite(dstPtr, uintptr(n)*typ.size)
		msanread(srcPtr, uintptr(n)*typ.size)
	}
	if asanenabled {
		asanwrite(dstPtr, uintptr(n)*typ.size)
		asanread(srcPtr, uintptr(n)*typ.size)
	}

	if writeBarrier.cgo {
		cgoCheckSliceCopy(typ, dstPtr, srcPtr, n)
	}

	if dstPtr == srcPtr {
		return n
	}

	// Note: No point in checking typ.ptrdata here:
	// compiler only emits calls to typedslicecopy for types with pointers,
	// and growslice and reflect_typedslicecopy check for pointers
	// before calling typedslicecopy.
	size := uintptr(n) * typ.size
	if writeBarrier.needed {
		pwsize := size - typ.size + typ.ptrdata
		bulkBarrierPreWrite(uintptr(dstPtr), uintptr(srcPtr), pwsize)
	}
	// See typedmemmove for a discussion of the race between the
	// barrier and memmove.
	memmove(dstPtr, srcPtr, size)
	return n
}
```
