package main

func main() {
	c := make(chan bool, 1)
	close(c)
	<-c
	<-c
}
