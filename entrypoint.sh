#!/bin/bash
echo 1111 > /app/log1.txt
echo 2222 > /app/log2.txt

/opt/aws/amazon-cloudwatch-agent/bin/start-amazon-cloudwatch-agent
