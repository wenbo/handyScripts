aws --version
aws configure
vi ~/.aws/credentials
vi ~/.aws/config

# ECSクラスター内の稼働しているタスクを全て取得する
aws ecs list-tasks --cluster ${env}-main-cluster --query "taskArns[]" --output text --profile ${profile_name}

# 実行されているタスクが１個の場合はこっちでいい
aws ecs execute-command --cluster ${env}-main-cluster --task $(aws ecs list-tasks --cluster ${env}-main-cluster  --profile ${profile_name} | jq -r '.taskArns[] | split("/")[-1]') --container app --interactive --command "/bin/bash" --profile ${profile_name}
