package main

func main() {
	c := make(chan string, 3)
	c <- "1"
	c <- "2"
	close(c)
	y := <-c
	_ = y
}
