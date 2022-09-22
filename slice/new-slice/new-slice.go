package main

import (
	"os"
	"strconv"
)

func main() {
	size := 0
	for _, a := range os.Args[1:] {
		size, _ = strconv.Atoi(a)
	}
	s := make([]byte, size)
	s[0] = 1
	_ = s
}
