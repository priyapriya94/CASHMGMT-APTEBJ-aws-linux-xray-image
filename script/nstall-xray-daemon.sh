#!/bin/bash
mkdir -p /opt/xray
chown -R apt:apt /opt/xray
curl -o /tmp/daemon.zip https://s3.dualstack.us-east-2.amazonaws.com/aws-xray-assets.us-east-2/xray-daemon/aws-xray-daemon-linux-3.1.0.zip
unzip /tmp/daemon.zip -d /opt/xray
chmod +x /opt/xray/xray
rm -fr /tmp/daemon.zip
