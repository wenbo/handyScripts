## word
s3: Simple Storage Service
IAM: AWS Identity and Access Management (IAM)
ARN:"Amazon Resource Name"の略で、AWSリソースを一意に識別するための名前です
ACM: AWS Certificate Manager AWS のサービスと接続されたリソースを使用した SSL/TLS 証明書のプロビジョニングと管理
Beanstalk: Amazon Elastic Beanstalk は、Java、.NET、PHP、Node.js、Python、Ruby、Go、Docker で開発されたウェブアプリケーションやサービスを、Apache、Nginx、Passenger、IIS などの使い慣れたサーバーにデプロイおよびスケーリングするための使いやすいサービスです
SAM: AWS Serverless Application Model (AWS SAM)
EC2: Elastic Compute Cloud
ECR: Amazon Elastic Container Registry (Amazon ECR) このレジストリを使うと、コンテナイメージを簡単に保存、共有
ECS: Amazon Elastic Container Service (Amazon ECS)
EFS: Amazon Elastic File System, サーバーレス、完全な弾力性を備えたファイルストレージ
InstanceStorage: インスタンスストアはEBSよりパフォーマンスが優れている一方で、データは揮発性です。
FSx: Amazon FSx では、広く使用されている 4 つのファイルシステム (NetApp ONTAP、OpenZFS、Windows File Server、Lustre) から選択できます
ELB: Elastic Load Balancing は、アプリケーションへのトラフィックを、1 つまたは複数のアベイラビリティーゾーン (AZ) 内の複数のターゲットおよび仮想アプライアンスに自動的に分散します
  CLB: CLB(Classic Load Balancer)  ALB:Application Load Balancer  NLB(Network Load Balancer)
Fargate: AWS Fargate は、Amazon ECS または Amazon EKS と互換性のあるサーバーレスコンピューティングエンジンで、サーバーやクラスターを管理することなくコンテナを実行することを可能にします。FargateはEC2に似ていますが、仮想マシンを提供する代わりに、コンテナを提供します。
AMI: 「AWS AMI」のAMIは（AWS Amazon Machine Image）の略
SNS: Simple Notification Service
SQS: Simple Queue Service
AWS Step Functions
aws black belt
Amazon S3 Glacier Deep Archive
S3 One Zone-IA: アクセス頻度は低いが、必要に応じてすぐに取り出すこと必要があるデータ向けのストレージクラス。S3 One Zone-Infrequent Access
EBS: Amazon Elastic Block Store EBS
AWS Pricing Calculator
ENI: Elastic Network Interface (ENI)
Kinesis: データストリームをリアルタイムで収集、処理、および分析します
プロビジョンド IOPS: provisioned-iops, 「1秒間にどのぐらいの入力や出力ができるのかという支給量」が「AWSから約束される」という事を意味します
スループット: throughput, コンピューターやネットワークの一定時間内に処理される情報量、データ転送速度、通信速度などを示すのに使われる
オーバーヘッド: overhead, 機器やシステムへかかる負荷、余分に費やされる処理時間などのことをオーバーヘッドという。
RUM: リアルタイムでユーザーモニターリング
RRS: reduced-redundancy storage, 低冗長化ストレージ (RRS) は Amazon S3 のストレージオプションの 1 つです。Amazon S3 の標準ストレージと比べて、冗長性レベルを下げることで、重要性の低い、再生可能なデータを保存するのに適しています
Run Command: セキュアで安全な大規模リモート管理, 組み込みの安全管理および監査機能により、Amazon EC2 インスタンスと、オンプレミスサーバーまたは仮想マシン (VM) をセキュアにに管理
OpsWorks: Chef と Puppet の設定管理 https://www.puppet.com/docs/
CodeDeploy: AWS CodeDeploy は、完全マネージド型のデプロイサービスで、Amazon EC2、AWS Lambda、オンプレミスサーバーなどのコンピューティングサービスへのソフトウェアのデプロイを自動化します
Cognito: Amazon Cognito ID プールを使用することで、クラウドリソースにアクセスするための AWS 認証情報を提供できます。

SES: Amazon Simple Email Service
SQS: Amazon Simple Queue Service マイクロサービス、分散システム、およびサーバーレスアプリケーション用の完全マネージド型メッセージキュー
SNS: Amazon Simple Notification Service A2A および A2P メッセージング用のフルマネージド Pub/Sub サービスです。 マイクロサービス、分散システム、およびイベント駆動型のサーバーレスアプリケーションの分離を可能にする、可用性が高く耐久性に優れたセキュアな完全マネージド型の pub/sub メッセージングサービスです
SigV4: AWS Signature Version 4 (SigV4)
IVR: IVRとは、Interactive Voice Responseの略。 コンピューターによる音声自動応答システムのこと
SDN: SDNとはSoftware Defined Networkingの略です。 「ソフトウェアによって定義されるネットワーク」という名前の通り、ルーターやサーバ、スイッチなど、ネットワークを構成している機器をソフトウェアを介して一括制御することで機器設定やネットワーク構成を柔軟に変更できます。
SCP: Service Control Policy
AWS RAM: Resource Access Manager
CIDR: Classless Inter-Domain Routing インターネット上のデータルーティング効率を向上させる IP アドレス割り当て方法です。
DR: disaster-recovery (Backup & Restore, Pilot Light, Warm standby, Multi site)
DynamoDB: DynamoDBがセッションデータやユーザー設定、メタデータなどを格納するための理想的なデータベースサービスです
RI: リザーブドインスタンス (RI, ReservedInstances)
IP masquerade: IPマスカレードとは、インターネットに接続された企業などで、一つのグローバルなIPアドレスをLAN内の複数の端末で共有する技術のことで、LinuxにおけるNAPT（Network Address and Port Translation）の実装をIPマスカレードと呼ぶ。
ACL: ACL（Access Control List）とは、システムやファイル、ネットワーク上のリソースなどへのアクセス可否の設定をリストとして列挙したものです。
copilot-cl: The AWS Copilot CLI is a tool for developers to build, release and operate production-ready containerized applications on AWS App Runner or Amazon ECS on AWS Fargate.
CDK: AWS Cloud Development Kit (CDK)
DLM: Amazon Data Lifecycle Manager, EBS スナップショットや AMI の作成といったバックアップスケジュールを設定できるAWSサービスである
DLQ: Dead letter queue, デッドレターキュー (DLQ) は、エラーのためにソフトウェアシステムが処理できないメッセージを一時的に保存する特別なタイプのメッセージキューです
Fleet: EC2 フリート には、インスタンスのフリート (つまり、グループ) を起動するための設定情報が含まれています。
KMS: AWS Key Management Service, KMS キーを使用して、データの暗号化、復号、再暗号化を行うことができます。
failover: フェイルオーバーとは、稼働中のシステムで問題が生じてシステムやサーバーが停止してしまった際に、自動的に待機システムに切り替える仕組みをいいます。
WAF: web application firewall, AWS WAF is a web application firewall service that lets you monitor web requests that are forwarded to an Amazon API Gateway API, an Amazon CloudFront distribution, or an Application Load Balancer
NAT ゲートウェイ: ネットワークアドレス変換 (NAT) サービスです。NAT ゲートウェイを使用すると、プライベートサブネット内のインスタンスは VPC 外のサービスに接続できますが、外部サービスはそれらのインスタンスとの接続を開始できません
Shield: AWS Shield is a managed Distributed Denial of Service (DDoS) protection service that safeguards applications running on AWS
Resolver: Amazon Route 53 リゾルバー   ネットワークの DNS と簡単に統合できる VPC 用の DNS リゾルバーサービス
Redshift: AWS上で提供されているデータウェアハウス専用のデータベースサービスです。 クラウド内でのフルマネージド型、ペタバイト規模のデータウェアハウスサービスです。あらゆるデータを構造化して蓄積し、高速に分析処理できることが大きな特徴です。 またAmazon Redshiftを用いることで、機械学習を用いた高度なデータ分析も可能です
リードレプリカ: read replica, データベースの負荷分散のために作成される、参照専用の複製
イレブンナイン: eleven nine

BCP: Business Continuity Plan 事業継続計画
RTO: Recorvery Time Objective 目標復旧時間
RPO: Recovery Point Objective 目標復旧時点
RLO: Recovery Level Objective 目標復旧レベル


AWS Well-Architected と 6 つの柱
1. Reliability 信頼性の柱
2. Performance Efficiency パフォーマンス効率の柱
3. Security セキュリティの柱
4. Cost Optimization コスト最適化の柱
5. Operational Excellence オペレーショナルエクセレンスの柱
6. Sustainability 持続可能性の柱
