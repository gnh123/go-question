package main

import (
	"sync"
	"time"
)

func demo() {

	var wg sync.WaitGroup
	wg.Add(1)
	go func() {
		defer wg.Done()
		time.Sleep(time.Second * 100)
	}()

	go func() {
		wg.Wait()
	}()

	wg.Add(1)
	wg.Add(1)
}

func demo2() {
	var wg sync.WaitGroup
	wg.Add(3)
	go func() {

		time.Sleep(time.Second * 1)
		wg.Done()
	}()
	go func() {
		time.Sleep(time.Second * 2)
		wg.Done()

	}()
	go func() {

		time.Sleep(time.Second * 1)
		wg.Done()
	}()

	wg.Wait()
}

func demo3() {
	var wg sync.WaitGroup
	wg.Add(3)
	go func() {

		time.Sleep(time.Second * 1)
		wg.Done()
	}()
	go func() {
		time.Sleep(time.Second * 2)
		wg.Done()

	}()
	go func() {

		time.Sleep(time.Second * 1)
		wg.Done()
	}()

	go wg.Wait()
	wg.Wait()
}

func main() {
	demo3()
}
