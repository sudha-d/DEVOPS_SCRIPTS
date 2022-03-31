#!/bin/bash
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install epel-release 
amazon-linux-extras install epel 
amazon-linux-extras install java-openjdk11 -y
sudo yum install java-11-openjdk-devel -y
sudo yum install jenkins -y
systemctl  start jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
