package main

func main() {
	done := make(chan bool)
	go func() {
		defer close(done)
		for {
		}
	}()
	<-done
}
