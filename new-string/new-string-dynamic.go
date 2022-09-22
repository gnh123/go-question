package main

import "fmt"

func main() {
	s1 := new(string)
	*s1 = "hello"

	fmt.Printf("%p\n", s1)
}
