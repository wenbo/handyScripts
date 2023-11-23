# https://docs.aws.amazon.com/index.html

## account
https://895333814097.signin.aws.amazon.com/console
RPLpb&Yj=pA]
gsjita@
bunntai@

## インストールの確認
$ which aws
/usr/local/bin/aws
$ aws --version
aws-cli/2.0.0 Python/3.7.4 Darwin/18.7.0 botocore/2.0.0
$ aws configure
$ cat  ~/.aws/credentials
[default]
aws_access_key_id = AKIA5A5QNZ5IWSGLEXPP
aws_secret_access_key = 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
$ aws s3 ls
$ aws help
$ aws sts help
次のコマンドでは、使用可能な Amazon Elastic Compute Cloud (Amazon EC2) 固有のコマンドが表示されます。
$ aws ec2 describe-instances help
$ aws iam list-users --output table
$ aws iam list-users --output json
{
    "Users": [
        {
            "Path": "/",
            "UserName": "bob",
            "UserId": "AIDA5A5QNZ5IYSTVXWHIY",
            "Arn": "arn:aws:iam::895333814097:user/bob",
            "CreateDate": "2020-04-09T02:22:45+00:00"
        },
        {
            "Path": "/",
            "UserName": "tama",
            "UserId": "AIDA5A5QNZ5IWCPTGGHNT",
            "Arn": "arn:aws:iam::895333814097:user/tama",
            "CreateDate": "2020-04-09T07:27:12+00:00"
        }
    ]
}
$ aws iam list-users --profile prodaccess

$ aws s3 ls --profile prodaccess

https://console.aws.amazon.com/iam/home?region=us-east-2#/roles/lambda-s3-role?section=trust
以下のアクセスコントロールポリシードキュメントを編集して、信頼関係をカスタマイズできます。
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::895333814097:root",
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}



### https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/with-s3-example.html
$ aws lambda update-function-configuration --function-name hello-world-python  --memory-size 256 --profile prodaccess --region us-east-2

$ yarn add --arch=x64 --platform=linux --target=12.13.0 async sharp
$ zip -r function.zip .
$ aws lambda create-function help
$ aws lambda create-function --function-name CreateThumbnail \
--zip-file fileb://function.zip --handler index.handler --runtime nodejs12.x \
--timeout 10 --memory-size 1024 \
--role arn:aws:iam::895333814097:role/lambda-s3-role

$ aws lambda create-function --function-name CreateThumbnail \
--zip-file fileb://function.zip --handler index.handler --runtime nodejs12.x \
--timeout 10 --memory-size 1024 \
--role arn:aws:iam::895333814097:role/lambda-s3-role --profile prodaccess --region us-east-2

$ aws lambda create-function --function-name CreateThumbnail \
--zip-file fileb://function.zip --handler index.handler --runtime nodejs12.x \
--timeout 10 --memory-size 1024 \
--role arn:aws:iam::895333814097:role/service-role/lambda_basic_execution --profile prodaccess --region us-east-2 --cli-connect-timeout 6000
$ aws lambda update-function-configuration --function-name CreateThumbnail --timeout 30 --profile prodaccess --region us-east-2
$ aws lambda invoke --function-name CreateThumbnail --invocation-type Event \
--payload fileb://inputFile.txt outputfile.txt --profile prodaccess --region us-east-2


$ aws lambda create-function --function-name CreateThumbnail2 \
--zip-file fileb://function.zip --handler index.handler --runtime nodejs12.x \
--timeout 10 --memory-size 1024 \
--role arn:aws:iam::895333814097:role/lambda-s3-role --cli-connect-timeout 6000


$ aws lambda add-permission --function-name CreateThumbnail2 --principal s3.amazonaws.com \
--statement-id s3invoke --action "lambda:InvokeFunction" \
--source-arn arn:aws:s3:::wenbo-mybucket \
--source-account 895333814097 --profile prodaccess --region us-east-2
{
    "Statement": "{\"Sid\":\"s3invoke\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"s3.amazonaws.com\"},\"Action\":\"lambda:InvokeFunction\",\"Resource\":\"arn:aws:lambda:us-east-2:895333814097:function:CreateThumbnail2\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"895333814097\"},\"ArnLike\":{\"AWS:SourceArn\":\"arn:aws:s3:::wenbo-mybucket\"}}}"
}

$ aws lambda get-policy --function-name CreateThumbnail2 --profile prodaccess --region us-east-2

## SAM
https://docs.aws.amazon.com/ja_jp/serverless-application-model/latest/developerguide/serverless-sam-cli-install-mac.html
https://docs.docker.com/docker-for-mac/#file-sharing
brew tap aws/tap
brew install aws-sam-cli
sam --versionw
pip3 install

## QA
1. aws lambda create-function is not authorized to perform
