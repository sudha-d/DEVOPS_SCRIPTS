#!/bin/bash
sudo su -
yum install grafana -y
vi /etc/yum.repos.d/grafana.repo

[grafana]
name=grafana
baseurl=https://packages.grafana.com/oss/rpm
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://packages.grafana.com/gpg.key
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt

systemctl daemon-reload

systemctl enable grafana-server
systemctl start grafana-server
service grafana-server status
