package main

func main() {
	c := make(chan string, 2)
	c <- "1"
	c <- "2"
}
