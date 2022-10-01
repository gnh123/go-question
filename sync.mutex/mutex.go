package main

import (
	"sync"
	"time"
)

func main() {
	var m sync.Mutex
	m.Lock()
	go func() {
		time.Sleep(time.Second * 1000)
		m.Unlock()
	}()
	m.Lock()
}
