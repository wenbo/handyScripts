# https://docs.aws.amazon.com/index.html

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
次のコマンドでは、使用可能な Amazon Elastic Compute Cloud (Amazon EC2) 固有のコマンドが表示されます。
$ aws ec2 describe-instances help
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

### https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/with-s3-example.html
$ yarn add --arch=x64 --platform=linux --target=12.13.0 async sharp
$ zip -r function.zip .
$ aws lambda create-function help
$ aws lambda create-function --function-name CreateThumbnail \
--zip-file fileb://function.zip --handler index.handler --runtime nodejs12.x \
--timeout 10 --memory-size 1024 \
--role arn:aws:iam::895333814097:role/lambda-s3-role


## QA
1. aws lambda create-function is not authorized to perform
