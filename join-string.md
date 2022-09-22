# 字符串拼接 a + b...发生了啥？
go version = 1.19.1
以下分析都建立在编译器不优化的前提

## 两个字符串拼接
```go
package main

func main() {
	s := "hello"

	s2 := "world1"

	s3 := s + s2

	_ = s3
}
```

打印汇编
```
	0x0044 00068 (join-string-2.go:8)	MOVD	main.s-16(SP), R1
	0x0048 00072 (join-string-2.go:8)	MOVD	main.s-8(SP), R2
	0x004c 00076 (join-string-2.go:8)	MOVD	$main..autotmp_3-80(SP), R0
	0x0050 00080 (join-string-2.go:8)	PCDATA	$1, ZR
	0x0050 00080 (join-string-2.go:8)	CALL	runtime.concatstring2(SB) #调用concatstring2 进行字符串拼接
```

从汇编里面可以得知, 调用了runtime里面的concatstring2函数，实际上调用的是concatstring2, 
该函数主要 有几步组成， 
1. 先计算累加之后的总容量数
2. 如果空字符串, 直接返回空串
3. 如果累加的串中别的都是空串，返回入参不是空串的值
4. rawstringtmp，如果要累加的容易小于tmpBuf则使用tmpBuf(1.19.1版本里面tmpBuf是32个字节)，这个例子会使用tmpBuf
 否则就从mallocgc里面分配一块新的内存用，用于存放累加的字符串

总结: 先计算长度再保存内容，可以实际分配内存的次数
```go
func concatstring2(buf *tmpBuf, a0, a1 string) string {
	return concatstrings(buf, []string{a0, a1})
}

func concatstrings(buf *tmpBuf, a []string) string {
	idx := 0
	l := 0
	count := 0
	for i, x := range a {
		n := len(x)
		if n == 0 {
			continue
		}
		if l+n < l {
			throw("string concatenation too long")
		}
		l += n
		count++
		idx = i
	}
	if count == 0 {
		return ""
	}

	// If there is just one string and either it is not on the stack
	// or our result does not escape the calling frame (buf != nil),
	// then we can return that string directly.
	if count == 1 && (buf != nil || !stringDataOnStack(a[idx])) {
		return a[idx]
	}
	s, b := rawstringtmp(buf, l)
	for _, x := range a {
		copy(b, x)
		b = b[len(x):]
	}
	return s
}
```

## 多个字节串拼接
```go
package main

func main() {
	a0 := "111111111111111111"
	a1 := "222222222222222222"
	a2 := "3333333333333333333"
	a3 := "4444444444444444444"
	a4 := "5555555555555555555"
	a5 := "6666666666666666666"
	a6 := "777777777777777777777"
	a7 := "88888888888888888888"
	a8 := "9999999999999999999"
	a9 := "10101010101010101010"

	b := a0 + a1 + a2 + a3 + a4 + a5 + a6 + a7 + a8 + a9
	_ = b
}
```

汇编
```

	0x0020 00032 (join-string-mult.go:4)	MOVD	$go.string."111111111111111111"(SB), R4
	0x0028 00040 (join-string-mult.go:4)	MOVD	R4, main.a0-200(SP)
	0x002c 00044 (join-string-mult.go:4)	MOVD	$18, R4
	0x0030 00048 (join-string-mult.go:4)	MOVD	R4, main.a0-192(SP)
	0x0034 00052 (join-string-mult.go:5)	MOVD	$go.string."222222222222222222"(SB), R5
	0x003c 00060 (join-string-mult.go:5)	MOVD	R5, main.a1-216(SP)
	0x0040 00064 (join-string-mult.go:5)	MOVD	R4, main.a1-208(SP)
	0x0044 00068 (join-string-mult.go:6)	MOVD	$go.string."3333333333333333333"(SB), R4
	0x004c 00076 (join-string-mult.go:6)	MOVD	R4, main.a2-232(SP)
	0x0050 00080 (join-string-mult.go:6)	MOVD	$19, R4
	0x0054 00084 (join-string-mult.go:6)	MOVD	R4, main.a2-224(SP)
	0x0058 00088 (join-string-mult.go:7)	MOVD	$go.string."4444444444444444444"(SB), R5
	0x0060 00096 (join-string-mult.go:7)	MOVD	R5, main.a3-248(SP)
	0x0064 00100 (join-string-mult.go:7)	MOVD	R4, main.a3-240(SP)
	0x0068 00104 (join-string-mult.go:8)	MOVD	$go.string."5555555555555555555"(SB), R5
	0x0070 00112 (join-string-mult.go:8)	MOVD	R5, main.a4-264(SP)
	0x0074 00116 (join-string-mult.go:8)	MOVD	R4, main.a4-256(SP)
	0x0078 00120 (join-string-mult.go:9)	MOVD	$go.string."6666666666666666666"(SB), R5
	0x0080 00128 (join-string-mult.go:9)	MOVD	R5, main.a5-280(SP)
	0x0084 00132 (join-string-mult.go:9)	MOVD	R4, main.a5-272(SP)
	0x0088 00136 (join-string-mult.go:10)	MOVD	$go.string."777777777777777777777"(SB), R5
	0x0090 00144 (join-string-mult.go:10)	MOVD	R5, main.a6-296(SP)
	0x0094 00148 (join-string-mult.go:10)	MOVD	$21, R5
	0x0098 00152 (join-string-mult.go:10)	MOVD	R5, main.a6-288(SP)
	0x009c 00156 (join-string-mult.go:11)	MOVD	$go.string."88888888888888888888"(SB), R5
	0x00a4 00164 (join-string-mult.go:11)	MOVD	R5, main.a7-312(SP)
	0x00a8 00168 (join-string-mult.go:11)	MOVD	$20, R5
	0x00ac 00172 (join-string-mult.go:11)	MOVD	R5, main.a7-304(SP)
	0x00b0 00176 (join-string-mult.go:12)	MOVD	$go.string."9999999999999999999"(SB), R6
	0x00b8 00184 (join-string-mult.go:12)	MOVD	R6, main.a8-328(SP)
	0x00bc 00188 (join-string-mult.go:12)	MOVD	R4, main.a8-320(SP)
	0x00c0 00192 (join-string-mult.go:13)	MOVD	$go.string."10101010101010101010"(SB), R4
	0x00c8 00200 (join-string-mult.go:13)	MOVD	R4, main.a9-344(SP)
	0x00cc 00204 (join-string-mult.go:13)	MOVD	R5, main.a9-336(SP)
	0x00d0 00208 (join-string-mult.go:15)	MOVD	$main..autotmp_11-160(SP), R16
	0x00d4 00212 (join-string-mult.go:15)	MOVD	$main..autotmp_11-16(SP), R4
	....中间省略
	0x0318 00792 (join-string-mult.go:15)	CALL	runtime.concatstrings(SB)  #调用concatstrings进行字符串拼接
```

* 这里故意构造一个大于tmpBuf长度的字符串，所以会触发mallocgc的逻辑
逻辑调用是concatstrings->rawstring
```go
func rawstringtmp(buf *tmpBuf, l int) (s string, b []byte) {
	if buf != nil && l <= len(buf) {
		b = buf[:l]
		s = slicebytetostringtmp(&b[0], len(b))
	} else {
		s, b = rawstring(l)
	}
	return
}

```
