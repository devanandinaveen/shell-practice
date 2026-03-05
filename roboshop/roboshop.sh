#!/bin/bash

SG_ID="sgr-0a678d4c9fd7804a6" # this is for security group 

AMI_ID="ami-0220d79f3f480ecf5  "

for instance in $@
do
aws ec2 run-instances \
    --image-id <$AMI_ID> \
    --instance-type <t3.micro>\
    --security-group-ids <$SG_ID> \
    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=<$$instance}]:" \
    --query 'Instances[0].{InstanceId:InstanceId,PrivateIp:PrivateIpAddress,Tags:Tags}' \
    --output json
done