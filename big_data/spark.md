# References
[Apache Sparkを勉強して分散処理できますよ！って言えるようになる] http://qiita.com/rtoya/items/d80e59371832877fbbb1
http://spark.apache.org/downloads.html
http://www.scala-sbt.org/download.html

## Apache Sparkとは
大規模データを分散処理をオンメモリで実現するプラットフォーム
高速 かつ 汎用的 であることを目標に設計されている
UC Berkekeyで開発され、今はApacheのトップレベルプロジェクトになっている
scala, python, java, SQLのシンプルなAPIを提供している
## そもそも分散処理とは
ある計算処理をネットワーク接続された複数のコンピュータを用いて同時並列で処理すること
ビッグデータを扱う際に、処理時間を短縮するための手法のひとつ
安価なサーバを複数台用意して処理を割り振れるので、費用を抑えることが可能 − ただし、複雑なプログラミングが必要になる

// 現実のScalaアプリケーションでは、Scalaプログラムを手動でコンパイル1することは非常に稀で、標準的なビルドツールであるsbt（Simple Build Tool）というツールを用いることになります。
$ brew install sbt

# Install
➜  spark mv ~/Downloads/spark-2.1.0-bin-hadoop2.7.tgz ./
➜  spark ls
spark-2.1.0-bin-hadoop2.7.tgz
➜  spark tar xzf spark-2.1.0-bin-hadoop2.7.tgz
➜  spark ls
spark-2.1.0-bin-hadoop2.7     spark-2.1.0-bin-hadoop2.7.tgz
➜  spark pwd
/Users/wenbo/workspace/sandbox/spark
➜  spark ls
spark-2.1.0-bin-hadoop2.7     spark-2.1.0-bin-hadoop2.7.tgz
➜  spark cd spark-2.1.0-bin-hadoop2.7
➜  spark-2.1.0-bin-hadoop2.7 ls
LICENSE   NOTICE    R         README.md RELEASE   bin       conf      data      examples  jars      licenses  python    sbin      yarn
➜  spark-2.1.0-bin-hadoop2.7 bin/pyspark
➜  spark-2.1.0-bin-hadoop2.7 ./bin/spark-shell
scala> var a = 3 + 3
a: Int = 6

scala> a
res13: Int = 6

scala> var lines = sc.textFile("README.md")
lines: org.apache.spark.rdd.RDD[String] = README.md MapPartitionsRDD[3] at textFile at <console>:24

scala> sc
res14: org.apache.spark.SparkContext = org.apache.spark.SparkContext@1784a296

scala> lines.count()
res15: Long = 104


### DAG
val lines = sc.textFile("README.md")
val wordCounts = lines.flatMap(line => line.split(" ")).map(word => (word, 1)).reduceByKey ((a, b) => a + b)
wordCounts.toDebugString
