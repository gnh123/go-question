package main

func main() {
	c := make(chan string, 3)
	c <- "1"
	c <- "2"
	close(c)
	y, ok := <-c
	println(ok)
	y, ok = <-c
	println(ok)
	y, ok = <-c
	println(ok)
	_ = y
}
