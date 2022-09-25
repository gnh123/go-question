package main

import "time"

func main() {
	c := make(chan bool)
	go func() {
		// 不让检查器报 死锁的错误
		time.Sleep(time.Hour * 2)
		c <- true
	}()
	<-c
}
