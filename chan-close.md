## chan
### 对被关闭了的chan不停读取为啥会立马返回？

先构造一个测试代码, 声明一个chan然后关闭，不停读取
```go
package main

func main() {
	c := make(chan bool, 1)
	close(c)
	<-c
	<-c
}

```
看下汇编, 调用的是runtime包下面的chanrecv1函数
```
	0x0038 00056 (chan-read-close.go:6)	CALL	runtime.chanrecv1(SB)
	0x003c 00060 (chan-read-close.go:7)	MOVD	main.c-8(SP), R0
	0x0040 00064 (chan-read-close.go:7)	MOVD	ZR, R1
	0x0044 00068 (chan-read-close.go:7)	PCDATA	$1, ZR

```

当chan被关闭时，c.closed被置1, 直接返回return true, false
```go
func chanrecv(c *hchan, ep unsafe.Pointer, block bool) (selected, received bool) {
	// raceenabled: don't need to check ep, as it is always on the stack
	// or is new memory allocated by reflect.

	lock(&c.lock)

	if c.closed != 0 {
		if c.qcount == 0 {
			if raceenabled {
				raceacquire(c.raceaddr())
			}
			unlock(&c.lock)
			if ep != nil {
				typedmemclr(c.elemtype, ep)
			}
			return true, false
		}
		// The channel has been closed, but the channel's buffer have data.
	} else {
    // 省略
	}

	// 省略
}
```

### 一个chan里面有数据被读取完，这时候关闭了，能取到数据吗？

构造一个go的代码
```go

package main

func main() {
	c := make(chan string, 3)
	c <- "1"
	c <- "2"
	close(c)
	<-c
}
```
对于一个被关闭的chan，并且还有数据，会执行如下逻辑。
recvx计算器维护当前读取的索引位置, 队列长度qcount--, 
typedmemmove就是把变量的值返回出去，比如y := <- c,  如何把c的变量给到y, 编译器会把y的地址给到chanrecv函数，只要知道元素的类型(这里的string是16字节)
qp是被拷贝的数据指针，最后又变成朴实的memmove操作, 
```go
	if c.qcount > 0 {
		// Receive directly from queue
		qp := chanbuf(c, c.recvx)
		if raceenabled {
			racenotify(c, c.recvx, nil)
		}
		if ep != nil {
			typedmemmove(c.elemtype, ep, qp)
		}
		typedmemclr(c.elemtype, qp)
		c.recvx++
		if c.recvx == c.dataqsiz {
			c.recvx = 0
		}
		c.qcount--
		unlock(&c.lock)
		return true, true
	}
```

