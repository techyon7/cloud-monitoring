#! /bin/bash -xe
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
sudo yum install -y amazon-cloudwatch-agent
sudo aws s3 cp s3://grafana-files-sg/cw-config.json /opt/aws/amazon-cloudwatch-agent/bin/config.json
sudo mkdir -p /usr/share/collectd
sudo touch /usr/share/collectd/types.db
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json