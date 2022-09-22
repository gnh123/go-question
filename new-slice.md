# 新建一个slice发生了啥？

## 来段golang的示例代码
```
package main

import (
	"os"
	"strconv"
)

func main() {
	size := 0
	for _, a := range os.Args[1:] {
		size, _ = strconv.Atoi(a)
	}
	s := make([]byte, size)
	s[0] = 1
	_ = s
}
```

## 生成的汇编代码
从汇编里面可以发现是调用了runtime包下面的makeslice
```
  ....省略不太重要的细节
	0x00b4 00180 (new-slice.go:13)	MOVD	main.size-128(SP), R2
	0x00b8 00184 (new-slice.go:13)	MOVD	main.size-128(SP), R1
	0x00bc 00188 (new-slice.go:13)	MOVD	$type.uint8(SB), R0
	0x00c4 00196 (new-slice.go:13)	PCDATA	$1, ZR
	0x00c4 00196 (new-slice.go:13)	CALL	runtime.makeslice(SB)
```

从实现上来看就是拿len, cap 到malloc那申请一块新的内存
```go
func makeslice(et *_type, len, cap int) unsafe.Pointer {
	mem, overflow := math.MulUintptr(et.size, uintptr(cap))
	if overflow || mem > maxAlloc || len < 0 || len > cap {
		// NOTE: Produce a 'len out of range' error instead of a
		// 'cap out of range' error when someone does make([]T, bignumber).
		// 'cap out of range' is true too, but since the cap is only being
		// supplied implicitly, saying len is clearer.
		// See golang.org/issue/4085.
		mem, overflow := math.MulUintptr(et.size, uintptr(len))
		if overflow || mem > maxAlloc || len < 0 {
			panicmakeslicelen()
		}
		panicmakeslicecap()
	}

	return mallocgc(mem, et, true)
}
```
