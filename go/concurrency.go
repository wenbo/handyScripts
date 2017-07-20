// https://go-tour-jp.appspot.com/concurrency/5

package main

import "fmt"

func fibonacci(c, quit chan int) {
	x, y := 0, 1
	fmt.Println("####")
	for {
		select {
		case c <- x:
			x, y = y, x+y
		case <-quit:
			fmt.Println("quit")
			return
		}
	}
}

func main() {
	c := make(chan int)
	quit := make(chan int)
	go func() {
		for i := 0; i < 10; i++ {
			fmt.Println("main")
			fmt.Println(<-c)
		}
		quit <- 0
	}()
	fibonacci(c, quit)
}

/* 
####
main
0
main
1
main
1
main
2
main
3
main
5
main
8
main
13
main
21
main
34
quit
*/
