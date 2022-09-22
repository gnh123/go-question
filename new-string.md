# 新建一个stirng发生了啥？
go version = 1.19.1
以下分析都建立在编译器不优化的前提

## 观察字符串常量
以下代码会声明两个字符串常量，然后做个拼接
```go
func main() {
	s := "hello"

	s2 := "world1"

	s3 := s + s2

	_ = s3
}
```
可以打印下汇编 `go tool compile -N -l -S new-string-2.go &>new-string-2.S` 具体在汇编层面看下做了哪些内容
```
	0x001c 00028 (new-string-2.go:4)	MOVD	$go.string."hello"(SB), R5 #把hello常量的地址，放到R5中
	0x0024 00036 (new-string-2.go:4)	MOVD	R5, main.s-16(SP)          #把R5的地址放至栈中
	0x0028 00040 (new-string-2.go:4)	MOVD	$5, R5                     #hello的长度是5， 把hello的长度移到R5
	0x002c 00044 (new-string-2.go:4)	MOVD	R5, main.s-8(SP)           #把hello的长度，移到栈中
	0x0030 00048 (new-string-2.go:6)	MOVD	$go.string."world1"(SB), R3 #类似, 移动地址
	0x0038 00056 (new-string-2.go:6)	MOVD	R3, main.s2-32(SP)          #地址移至栈中
	0x003c 00060 (new-string-2.go:6)	MOVD	$6, R4                      #长度至，R4中
	0x0040 00064 (new-string-2.go:6)	MOVD	R4, main.s2-24(SP)          #长度至 栈中
	0x0044 00068 (new-string-2.go:8)	MOVD	main.s-16(SP), R1           #
	0x0048 00072 (new-string-2.go:8)	MOVD	main.s-8(SP), R2
	0x004c 00076 (new-string-2.go:8)	MOVD	$main..autotmp_3-80(SP), R0
	0x0050 00080 (new-string-2.go:8)	PCDATA	$1, ZR
	0x0050 00080 (new-string-2.go:8)	CALL	runtime.concatstring2(SB)   #调用runtime包下面的concatstring2拼接两个字符串
	0x0054 00084 (new-string-2.go:8)	MOVD	R0, main.s3-48(SP)
	0x0058 00088 (new-string-2.go:8)	MOVD	R1, main.s3-40(SP)
	0x005c 00092 (new-string-2.go:11)	LDP	-8(RSP), (R29, R30)
	0x0060 00096 (new-string-2.go:11)	ADD	$144, RSP
	0x0064 00100 (new-string-2.go:11)	RET	(R30)
```

* 从上面的汇编可以看到如果是静态声明的字符串静态，是在程序里面硬编码的，通过SB（静态基址寄存器可以引用）不会调用malloc之类的函数。

## 观察动态声明字符串变量
```go
package main

import "fmt"

func main() {
	s1 := new(string)
	*s1 = "hello"

	fmt.Printf("%p\n", s1)
}
```

```
	0x0018 00024 (new-string-dynamic.go:6)	MOVD	$type.string(SB), R0  #把string放至r0中
	0x0020 00032 (new-string-dynamic.go:6)	PCDATA	$1, ZR
	0x0020 00032 (new-string-dynamic.go:6)	CALL	runtime.newobject(SB) #调用runtime包下面的newobject分配头
```
* 从上面的汇编可以看到如果是通过 new函数，会调用runtime.newobject函数动态分配内存

```go
func newobject(typ *_type) unsafe.Pointer {
	return mallocgc(typ.size, typ, true)
}
```
