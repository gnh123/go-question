package main

func main() {
	m := make(map[string]bool)
	m["1"] = true
	m["2"] = true
	m["3"] = true

	delete(m, "3")
}
