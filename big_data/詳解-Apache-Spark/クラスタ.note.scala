# ローカルモード
// ローカルモードでは単一のプロセス内ででSparkアプリケーションを動作させることができま す。すべてのSparkコンポーネントが1つのJavaプロセス内で動作しますので、開発やデバッグが非常に容易です。clusterモードとの内部動作の違いがSchedulerBackendなどによって抽象化されているので、このモードで開発したアプリケーションをそのままクラスタにデプロイできます。
${SPARK_HOME}/bin/spark-submit \
--class org.apache.spark.examples.SparkPi \
--master local[*] \
/path/to/examples.jar



# Spark Standaloneクラスタマネージャでのクラスタ構築

// まずはクラスタマネージャのマスタを起動します。sbin配下にstart-master.shというシェルスクリプトが用意されているのでこれを実行します。
➜  spark-2.1.0-bin-hadoop2.7 ./sbin/start-master.sh
// After starting the master, go to localhost:8080 , There will be your master ip and port informations

// 次に各ワーカノード上にスレーブを起動します。これには2つの方法があり、1つは各ワーカノード上で次のようにコマンドを実行します。
// Master must be a URL of the form spark://hostname:port
➜  spark-2.1.0-bin-hadoop2.7 ./sbin/start-slave.sh spark://wenbo-no-MacBook-Air.local:7077

## clientモードでのアプリケーション起動
/bin/spark-submit \
 --class org.apache.spark.examples.SparkPi \
 --master spark://<MASTER_HOST_NAME>:7077 \
 --deploy-mode client \
 /path/to/examples.jar
## clusterモードでのアプリケーション起動
./bin/spark-submit \
 --class org.apache.spark.examples.SparkPi \
 --master spark://<MASTER_HOST_NAME>:7077 \
 --deploy-mode cluster \
 /path/to/examples.jar



# Hadoop YARNによるクラスタ構築

## clientモード（yarn-client）でのアプリケーション起動
./bin/spark-submit \
 --class org.apache.spark.examples.SparkPi \
 --master yarn-client \
 /path/to/examples.jar
## clusterモード（yarn-cluster）でのアプリケーション起動
./bin/spark-submit \
 --class org.apache.spark.examples.SparkPi \
 --master yarn-cluster \
 /path/to/examples.jar


# Amazon EC2上でのクラスタ構築
// Sparkのディストリビューションにはspark-ec2というスクリプトが含まれており、これを利用することによってAmazon EC2をプロビジョンし、その上にSparkクラスタを簡単に構築できます。
./spark-ec2 \
--key-pair yimai-pregon \
--identity-file ~/.ssh/yimai-oregon.pem \
--slaves 2 \
--instance-type m3.xlarge \
--instance-profile-name myRole \
--region us-west-2 \
--ebs-vol-size 30 \
--spot-price 0.1 \
--spark-version 1.6.0 \
--hadoop-major-version yarn \
--vpc-id vpc-b98554dc \
--subnet-id subnet-5440da0d \
--zone us-west-2c \
--private-ips \
launch <CLUSTER_NAME>
