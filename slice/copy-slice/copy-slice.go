package main

func main() {
	s1 := make([]string, 2)
	s2 := []string{"hello", "world"}
	copy(s1, s2)
}
