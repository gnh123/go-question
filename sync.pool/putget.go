package main

import (
	"bytes"
	"sync"
)

func main() {
	var p sync.Pool
	p.New = func() any {
		return bytes.NewBuffer(make([]byte, 512))
	}

	b := p.Get()
	p.Put(b)
	p.Put(bytes.NewBuffer(make([]byte, 512)))
	p.Put(bytes.NewBuffer(make([]byte, 512)))
	p.Put(bytes.NewBuffer(make([]byte, 512)))
	p.Put(bytes.NewBuffer(make([]byte, 512)))
	p.Get()
	p.Get()
}
