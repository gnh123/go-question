package main

func main() {
	a := make([]byte, 512)
	for i := 0; i < len(a); i++ {
		a[i] = byte(i)
	}
}
