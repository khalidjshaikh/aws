#!/bin/bash
# source ~/remove-proxy

## Modeling M1 thorugh M5 as one cluster
# ecs-cli up --capability-iam --size 1 --instance-type t3.micro --keypair Dell
for i in 1 2 3 4 5
do
  ecs-cli compose --project-name mc$i --file mc$i.yml up --cluster bhge
done

## Modeling M1 through M5 as multiple clusters
# ecs-cli up --capability-iam --size 1 --instance-type t3.micro --keypair Dell --cluster nginx
# ecs-cli compose --file nginx.yml --cluster nginx up
# ecs-cli up --capability-iam --size 1 --instance-type t3.micro --keypair Dell --cluster httpd
# ecs-cli compose --file httpd.yml --cluster httpd up

## Default Authentication
# ecs-cli configure profile --access-key AKIAUG3YR5U3VAINVX73 --secret-key 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
# ecs-cli configure --region us-east-1 --cluster bhge

## Cluster Bring Up
# ecs-cli up --capability-iam --size 1 --instance-type t3.micro --keypair Dell
# sleep 30
# ecs-cli compose up
# ecs-cli ps

## Cluster Bring Down
# ecs-cli down

## Terminal All EC2 instances
# aws ec2 terminate-instances --instance-ids $(aws ec2 describe-instances --filters  "Name=instance-state-name,Values=pending,running,stopped,stopping" --query "Reservations[].Instances[].[InstanceId]" --output text | tr '\n' ' ')
# https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-cli-tutorial-ec2.html
