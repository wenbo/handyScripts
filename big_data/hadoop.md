# References
[Macでhadoopをちょっとだけ動かしてみる] http://qiita.com/ysk_1031/items/26752b5da1629c9db8f7

# Install
http://www.oracle.com/technetwork/java/javase/downloads/index.html
$ java -version
$ brew install hadoop
==> Caveats
In Hadoop's config file:
/usr/local/opt/hadoop/libexec/etc/hadoop/hadoop-env.sh,
/usr/local/opt/hadoop/libexec/etc/hadoop/mapred-env.sh and
/usr/local/opt/hadoop/libexec/etc/hadoop/yarn-env.sh
$JAVA_HOME has been set to be the output of:
/usr/libexec/java_home
==> Summary
🍺  /usr/local/Cellar/hadoop/2.8.0: 25,169 files, 2.1GB, built in 24 minutes 31 seconds

$ brew info hadoop
$ yarn -h
$ hadoop fs 
  run a generic filesystem user client
$ hadoop fs -ls /
  ルートディレクトリのファイル、ディレクトリの一覧
  http://linux.wwing.net/WordPress/?p=2988
  
$ hadoop jar  /usr/local/opt/hadoop/libexec/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.8.0.jar wordcount input output
$ cat output/part-r-00000
$ cd /usr/local/Cellar/hadoop/2.8.0
$ hdfs namenode -format
  これで、/tmp/hadoop-<ユーザー名>/dfs/name以下に、HDFSの管理ファイルが作られる。

<!-- hadoopのパッケージに付いてるシェルスクリプトを使う。-->
$ sbin/start-dfs.sh
  シェルが実行されると、Javaのプロセス (namenodeやdatanodeなど) が起動する。
  http://localhost:50070にアクセスすると、こんな感じの画面が見れる。
$ jps 
  jps - Java Virtual Machine Process Status Tool
$ sbin/start-yarn.sh
  http://localhost:8088にアクセスすると、こんな感じの画面が見れる。
$ jps
  先ほどのプロセスに加え、ResourceManager, NodeManagerが起動している。

<!-- sbin/stop-dfs.sh, sbin/stop-yarn.shで上記プロセスは停止できる。-->

処理の実行
$ hdfs dfs -mkdir /hadoop(hadoop fs mkdir /hadoop)
$ hdfs dfs -put input /hadoop/input
$ hadoop jar libexec/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.8.0.jar wordcount /hadoop/input /hadoop/output
$ hdfs dfs -cat /hadoop/output/part-r-00000
$ hadoop fs -du /hadoop/
