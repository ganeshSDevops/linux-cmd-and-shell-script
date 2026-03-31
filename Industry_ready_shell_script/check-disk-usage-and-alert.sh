#!/bin/bash

threshold=80
TOPIC_ARN="topic-arn-value"

actual_usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$actual_usage" -gt "$threshold" ]; then
    msg="Actual disk usage is ${actual_usage}% for / (root)"

    aws sns publish \
    --topic-arn "$TOPIC_ARN" \
    --message "$msg" \
    --subject "Disk Alert"
fi

################
################
✅ What this script does
Gets disk usage of /
Removes %
Compares with threshold (80)
Sends alert using Amazon SNS if exceeded
###############
###############