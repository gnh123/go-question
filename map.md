## map
go version=1.19.1

map是go内置的数据结构，提供高速k/v存储访问，底层使用hashtable实现，对于这块代码也有一些疑问
1. map set的执行流程
2. map get的执行流程
3. map delete的执行流程
4. map 重新rehashing的执行流程
5. map是挂链，还是其它方式解决冲突的？

## map set的执行流程
```go
package main

func main() {
	m := make(map[string]uint16)
	m["hello"] = 0
	m["world"] = 0
}
```

先看下汇编, 对于string类型的key原来调用的是mapassign_faststr这个函数
```go
	0x0070 00112 (map-set.go:4)	MOVD	$main..autotmp_1-200(SP), R0
	0x0074 00116 (map-set.go:4)	MOVD	R0, main.m-240(SP)
	0x0078 00120 (map-set.go:5)	MOVD	main.m-240(SP), R1
	0x007c 00124 (map-set.go:5)	MOVD	$type.map[string]bool(SB), R0
	0x0084 00132 (map-set.go:5)	MOVD	$go.string."hello"(SB), R2
	0x008c 00140 (map-set.go:5)	MOVD	$5, R3
	0x0090 00144 (map-set.go:5)	PCDATA	$1, $2
	0x0090 00144 (map-set.go:5)	CALL	runtime.mapassign_faststr(SB)
```

mapassign_faststr实现。
对于map， 每个槽位使用了bmap这个结构表示，具体布局就是先存放了8个字节的tophash, 8个key, 这个例子里是string就是16 * 8个字节。
再来8个value字节，这里是2 * 8个字节，最后是overflow的指针，存放第8 * n + 1个元素，会新建bmap放至overflow，常见hash实现用next指针解决冲突挂链，这里用overflow一个意思。一个bmap的大小=8 + keysize * 8 + valsize * 8 + ptrsize

下面的草图就是bmap内存布局。  
tophash  tophash tophash tophash tophash tophash tophash tophash   
key  key key key key key key key  
val  val val val val val val val   
overflow  
这么做个好处，内存紧凑，gc压力会小点  

1. 
```go
func mapassign_faststr(t *maptype, h *hmap, s string) unsafe.Pointer {
	if h == nil {
		panic(plainError("assignment to entry in nil map"))
	}
	if raceenabled {
		callerpc := getcallerpc()
		racewritepc(unsafe.Pointer(h), callerpc, abi.FuncPCABIInternal(mapassign_faststr))
	}
	if h.flags&hashWriting != 0 {
		fatal("concurrent map writes")
	}
	key := stringStructOf(&s)
	hash := t.hasher(noescape(unsafe.Pointer(&s)), uintptr(h.hash0))

	// Set hashWriting after calling t.hasher for consistency with mapassign.
	h.flags ^= hashWriting

	if h.buckets == nil {
		h.buckets = newobject(t.bucket) // newarray(t.bucket, 1)
	}

again:
	bucket := hash & bucketMask(h.B)
	if h.growing() {
		growWork_faststr(t, h, bucket)
	}
	b := (*bmap)(add(h.buckets, bucket*uintptr(t.bucketsize)))
	top := tophash(hash)

	var insertb *bmap
	var inserti uintptr
	var insertk unsafe.Pointer

bucketloop:
	for {
		for i := uintptr(0); i < bucketCnt; i++ {
			if b.tophash[i] != top {
				if isEmpty(b.tophash[i]) && insertb == nil {
					insertb = b
					inserti = i
				}
				if b.tophash[i] == emptyRest {
					break bucketloop
				}
				continue
			}
			k := (*stringStruct)(add(unsafe.Pointer(b), dataOffset+i*2*goarch.PtrSize))
			if k.len != key.len {
				continue
			}
			if k.str != key.str && !memequal(k.str, key.str, uintptr(key.len)) {
				continue
			}
			// already have a mapping for key. Update it.
			inserti = i
			insertb = b
			// Overwrite existing key, so it can be garbage collected.
			// The size is already guaranteed to be set correctly.
			k.str = key.str
			goto done
		}
		ovf := b.overflow(t)
		if ovf == nil {
			break
		}
		b = ovf
	}

	// Did not find mapping for key. Allocate new cell & add entry.

	// If we hit the max load factor or we have too many overflow buckets,
	// and we're not already in the middle of growing, start growing.
	if !h.growing() && (overLoadFactor(h.count+1, h.B) || tooManyOverflowBuckets(h.noverflow, h.B)) {
		hashGrow(t, h)
		goto again // Growing the table invalidates everything, so try again
	}

	if insertb == nil {
		// The current bucket and all the overflow buckets connected to it are full, allocate a new one.
		insertb = h.newoverflow(t, b)
		inserti = 0 // not necessary, but avoids needlessly spilling inserti
	}
	insertb.tophash[inserti&(bucketCnt-1)] = top // mask inserti to avoid bounds checks

	insertk = add(unsafe.Pointer(insertb), dataOffset+inserti*2*goarch.PtrSize)
	// store new key at insert position
	*((*stringStruct)(insertk)) = *key
	h.count++

done:
	elem := add(unsafe.Pointer(insertb), dataOffset+bucketCnt*2*goarch.PtrSize+inserti*uintptr(t.elemsize))
	if h.flags&hashWriting == 0 {
		fatal("concurrent map writes")
	}
	h.flags &^= hashWriting
	return elem
}
````
