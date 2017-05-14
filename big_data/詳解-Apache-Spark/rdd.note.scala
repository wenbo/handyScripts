scala> sc

// SparkContextのマスタURLにはlocal[*]が指定されており、これはローカルモードで動作していることを意味しています。
scala> sc.master

// 数値の配列から nums という変数名で RDD を作成しています
scala> val nums = sc.parallelize(Array(3, 2, 4, 1, 2, 1))

// 数値の配列からパーティション数3でRDDを作成
val numsPar3 = sc.parallelize(Array(3, 2, 4, 1, 2, 1), 3)

// RDD の操作には変換(Transformation)とアクション(Action)の 2 種類があります。基本的に は 2 つの操作を組み合わせることで、複雑な分散処理が実現されます。

// Spark で開発する上で、想定している実行プランにそって動作するか確認したいことがありま す。確認の方法として、toDebugString メソッドを利用する方法と Spark の管理画面の「 DAG Visualization」を利用する方法の2種類があります。

// Spark をローカルマシンで動作させている場合、ローカルホストの 4040 番ポート(http://localhost:4040)へアクセスすることで Spark の管理画面を確認できます。

val fruits = sc.parallelize(Array("Apple", "Orange", "Peach", "Orange", "PineApple", "Orange"))
fruits.map(fruit => fruit.length) // => [5, 6, 9, 6, 6, 5]
fruits.map(fr => fr.length) // => [5, 6, 9, 6, 6, 5]

fruits.filter(fruit => fruit.startsWith("P"))

val lines = sc.parallelize(Array("Apple is red", "PineApple is yellow"))
lines.flatMap(line => line.split(" ")) // => ["Apple", "is", "red", "PineApple", "is", "yellow"]

val fruits = sc.parallelize(Array("Apple", "Orange", "Peach", "Orange", "PineApple", "Orange"), 3)
fruits.glom().mapPartitionsWithIndex((p, it) => it.map(n => s"""Par$p: ${n.mkString(",")}"""))

// distinct メソッドは要素の重複を除外した RDD を返却します。Spark ではデータが複数ノードにまたがる可能性があるため、同一のデータは 1 つのパーティションに集めた上で重複を除外 していく必要があります。そのため、distinct メソッドを実行するとシャッフルが発生します。
val fruits = sc.parallelize(Array("Apple", "Orange", "Peach", "Orange", "PineApple", "Orange"))
fruits.distinct() // => ["Peach", "PineApple", "Orange", "Apple"]

// sample メソッドは RDD からサンプリングして新しい RDD を返却します。
val fruits = sc.parallelize(Array("Apple", "Orange", "Peach", "Orange", "PineApple", "Orange"))
fruits.sample(false, 0.5) // => ["Apple", "PineApple", "Orange", "Peach"] ※ seedを与えていないため、 結果は不定になります。

// zip メソッドは RDD を引数にとり、それぞれの要素のペア RDD を作成します。なお、それぞれの RDD のパーティション数・要素数が異なる場合はエラーとなります。
val fruits1 = sc.parallelize(Array("Apple", "Orange", "Peach", "Orange", "PineApple", "Orange"))
val fruits2 = sc.parallelize(Array("りんご", "オレンジ", "桃", "オレンジ", "パイナップル", "オレンジ"))
fruits1.zip(fruits2) // => [(Apple,りんご), (Orange,オレンジ), (Peach,桃), (Orange,オレンジ), (PineApple,パイナップル), (Orange,オレンジ)]

// union メソッドは要素の型が同じ RDD を結合します。単純に結合するのみで重複は省かれません。重複を省きたい場合はdistinctメソッドを別途利用する必要があります。また、パーティ ションの統合なども行われないため、パーティション数は結合元・結合先の合計になります。
val fruits1 = sc.parallelize(Array("Apple", "Orange", "Peach", "Orange", "PineApple", "Orange"))
val fruits2 = sc.parallelize(Array("Grape", "Apple", "Banana", "Orange"))
fruits1.union(fruits2) // => ["Apple", "Orange", "PineApple", "Orange", "Orange", "Peach", "Grape", "Apple", "Banana", "Orange"]

// ** 基 本 の ア ク ション **
// collectメソッドはRDDのすべての要素をドライバプログラムにArray型で返却します。
// foreach メソッドは各要素に引数で与えた関数を適用します。戻り値はありません。
// count メソッドは RDD の要素数を返却します。
// take メソッドは引数で与えた個数分の要素を RDD の先頭から取得し Array 型で返却します。
// first RDD の先頭の要素を返却します。take(1) と同等の動作になりますが、要素が存在しない場合の扱いが take メソッドとは異なります
// top メソッドは最も値が大きい順に引数分だけ要素を取得します。取得の順番は降順です。昇順で要素を取得したい場合は takeOrdered メソッドを使用できます。

// ** 集 約 の ア ク ション **
// reduce メソッドは RDD の要素を集約します。集約の方法は reduce メソッドの引数として関数を渡します。
// fold メソッドは reduce メソッドと同様に RDD の集約を行いますが、第 1 引数として初期値を設定します。
// aggregate メソッドは fold メソッドと同様に初期値を取る RDD の集約を行います。reduce メソッド、fold メソッドは各パーティションでの集約と各パーティションでの集約結果のマージに同じ関数を用いていましたが、aggregateメソッドでは上記2つの関数をそれぞれseqOp、 combOp として別に指定できます。

// ** 算術演算のアクション **
// sum メソッドは RDD の各要素の合計値を Double 型で返却します。
// stats メソッドでは統計情報を計算します。 個数 count 平均値 mean 合計値 sum 最大値 max 最小値 min 分散 variance 標本分散 sampleVariance 標準偏差 stdev 標本標準偏差 sampleStdev

// Sparkには2種類の共有変数の機能があり、これらを使用することで異なる「Worker Node (ワーカノード)」間で同じ値を参照・更新することができます。1 つ目はアキュムレータと呼ば れる書き込み専用の共有変数で、主にデバッグ用途での加算変数として使用されます。2 つ目はブロードキャストという読み込み専用の変数で、全ワーカノードでの処理に使用される変数をドライバプログラムから直接配布できます。

// ** パーティション数の調整 **
// repartitionメソッドは指定したパーティション数にRDDを再構築します。repartitionメソッ ドでは必ずシャッフルが行われます。もしパーティション数を減らすことが目的の場合は coalesce メソッドを使用し、shuffle パラメータを false にすることでシャッフルの実行を抑制 できます。

// ** データのロードとセーブ **
// SparkContext の textFile メソッドは引数に指定したパスからファイルを読み込みファイルの1 行を要素とした RDD を作成します。ファイルパスにはローカルパスのほか、HDFS などの Hadoop がサポートしている URI を与えることができます。

// ** データのセーブ **
// saveAsTextFile メソッドは指定するディレクトリに RDD の内容をテキストファイルとして書き込みます。書き込みされるファイルはパーティションの単位になり、ファイル名にパーティ ションの番号が付加されます。
val nums = sc.parallelize(Array(3, 2, 4, 1, 2, 1), 3)
nums.saveAsTextFile("output")