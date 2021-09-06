FROM ubuntu:20.04

WORKDIR /app

RUN apt-get update && apt-get install -y wget && \
  wget https://s3.amazonaws.com/amazoncloudwatch-agent/debian/amd64/latest/amazon-cloudwatch-agent.deb && \
  dpkg -i -E amazon-cloudwatch-agent.deb

COPY config.json /opt/aws/amazon-cloudwatch-agent/bin/default_linux_config.json
COPY entrypoint.sh .

ENV RUN_IN_CONTAINER="True"
ENV AWS_REGION="ap-northeast-1"

ENTRYPOINT ["sh", "/app/entrypoint.sh"]
