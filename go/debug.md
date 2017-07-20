go get github.com/derekparker/delve/cmd/dlv
dlv version

go build
dlv exec ./executable argument1 argument2…


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
restart (alias: r)
sources --------------------- Print list of source files.
stack (alias: bt) ----------- Print stack trace.
step (alias: s) ------------- Single step through program.
step-instruction (alias: si)  Single step a single cpu instruction.
stepout --------------------- Step out of the current function.
thread (alias: tr) ---------- Switch to the specified thread.
threads --------------------- Print out info for every traced thread.
trace (alias: t) ------------ Set tracepoint.

dlv attach <pid>

使いこなせるようになるとデバッグが捗りそうですね。
