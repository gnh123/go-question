package main

import "fmt"

func main() {
	m := make(map[string]uint16)
	m["hello"] = 0
	v := m["hello"]
	fmt.Println(v)

	key2 := "hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello"
	key := "hellohellohellohellohellohellohellohellohellohelloaaaaahellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello"
	key3 := "hellohellohellohellohellohellohellohellohellohellobbbbbhellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello"

	fmt.Println(len(key2), len(key), len(key3))
	m[key2] = 1
	m[key] = 3
	m[key3] = 4

	v = m[key3]
	fmt.Println(v)

	v = m[key]
	fmt.Println(v)

	v = m[key2]
	fmt.Println(v)
}
