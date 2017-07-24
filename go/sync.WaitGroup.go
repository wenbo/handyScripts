// https://www.kaoriya.net/blog/2013/07/08/
// ループが終わってしまって main をも抜けてしまう時 goroutine は実行されません。

package main

import (
	"fmt"
	"sync"
	"time"
)

func parallel(wg *sync.WaitGroup) {

	fmt.Println("A")
	time.Sleep(1 * time.Millisecond)
	fmt.Println("B")
	time.Sleep(1 * time.Millisecond)
	fmt.Println("C")

	// 終了を通知する
	wg.Done()
}

func main() {
	// WaitGroup構造体を初期化
	wg := new(sync.WaitGroup)
	// 3つのゴルーチンを同時に実行します
	for i := 0; i < 3; i++ {
		wg.Add(1)// WaitGroupに、ゴルーチンを1つずつ追加
		go parallel(wg)
	}
	// wg.Addで追加したすべてゴルーチンが、Doneで終了通知されるまで待機
	wg.Wait()
}
