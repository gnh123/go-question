package main

import "strings"

func main() {
	old := strings.Split(strings.Repeat("hello ", 256), " ")
	new := append(old, "1234")
	_ = new
}
