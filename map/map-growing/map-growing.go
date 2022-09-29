package main

import "fmt"

func main() {
	m := make(map[string]bool)
	// 初始b为0,
	// 第一次扩容是在第9个, 满足count > 8, count > 6.5 * 2 ^ B, 扩容之后b为1
	// 第二次扩容是在第13个
	for i := 0; i < 8*8+1; i++ {
		key := fmt.Sprint(i)
		m[key] = true
	}
}
