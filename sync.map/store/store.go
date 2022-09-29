package main

import (
	"fmt"
	"sync"
)

func main() {
	var m sync.Map
	m.Store("hello", 1)
	v, ok := m.Load("hello")
	fmt.Println(v, ok)

	m.Store("world", 2)

	m.Store("1234", 3)
	m.Load("1234")
	m.Load("1234")
	m.Load("1234")
}
