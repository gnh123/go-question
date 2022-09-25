package main

import "time"

func main() {
	c := make(chan bool)
	go func() {
		time.Sleep(time.Minute * 1)
		<-c
	}()

	c <- true
}
