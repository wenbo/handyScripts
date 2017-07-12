go get github.com/derekparker/delve/cmd/dlv
dlv version
$ dlv debug
Type 'help' for list of commands.
(dlv)

※初回起動時はデバッガはプロセスにアタッチするのにセキュリティ警告が出ますが許可してあげてください。
※dlvコマンドではなくデバッグ対象のコマンド側にコマンドライン引数を与えたい場合は dlv debug -- hoge のように -- で区切った後ろに引数として指定すれば渡せます。

(dlv) break main.main
locals でローカル変数の一覧が見れる。
print (alias: p) で変数nの値が表示できる。
list (alias: ls) で現在位置のソースコードの表示ができる。
stack (alias: bt) でスタック（バックトレース)の表示
exit (alias: quit | q) でデバッガを終了する。

使いこなせるようになるとデバッグが捗りそうですね。
