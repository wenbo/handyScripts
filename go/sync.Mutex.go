package main

import (
	"fmt"
	"sync"
	"time"
)

func parallel(wg *sync.WaitGroup, mt *sync.Mutex) {
	// ミューテックスを使用してロックします。
	mt.Lock()
	// 関数終了後にアンロックします。
	defer mt.Unlock()

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
	// Mutex構造体を初期化
	mt := new(sync.Mutex)
	// 3つのゴルーチンを同時に実行します
	for i := 0; i < 3; i++ {
		wg.Add(1) // WaitGroupに、ゴルーチンを1つずつ追加
		go parallel(wg, mt)
	}
	// wg.Addで追加したすべてゴルーチンが、Doneで終了通知されるまで待機
	wg.Wait()
}
