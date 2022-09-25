package main

import "sync"

func main() {
	c := make(chan bool)
	var wg sync.WaitGroup

	wg.Add(2)
	go func() {
		defer wg.Done()
		<-c
	}()
	go func() {
		defer wg.Done()
		<-c
	}()
	close(c)
	wg.Wait()
}
