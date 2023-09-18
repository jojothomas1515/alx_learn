package main

import (
	"fmt"
)

type myf func() int

func main() {
	fmt.Println("hello jojo")
	inc := genInc(2)
	fmt.Println(inc(4))
}

// genInc creates an "increment n" function
func genInc(n int) func(x int) int {
	return func(x int) int {
		return x + n
	}
}
