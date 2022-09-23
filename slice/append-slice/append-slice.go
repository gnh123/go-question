package main

func main() {
	old := []string{}
	//s := append(old, "hello")
	s := append(old, "hello", "world", "12345", "abcdef", "123456")
	_ = len(s)
	_ = cap(s)
	_ = s
	println(len(s))
	println(cap(s))
}
