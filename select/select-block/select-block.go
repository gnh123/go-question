package main

import (
	"fmt"
	"time"
)

func main() {
	c := make(chan bool)
	c1 := make(chan bool)
	go func() {
		time.Sleep(time.Minute)
		c <- true
	}()

	fmt.Printf("%p\n", c)
	fmt.Printf("%p\n", c1)
	select {
	case <-c:
	case <-c1:
	}
}
