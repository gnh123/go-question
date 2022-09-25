package main

func main() {
	c := make(chan bool, 2)
	c <- true
	c <- true
	<-c
}
