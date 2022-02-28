#!/bin/bash
sudo su -
hostnamectl set-hostname SQ
exit
amazon-linux-extras install epel
amazon-linux-extras install java-openjdk11
sudo yum  install java-11-openjdk-devel
java --version
cd /opt
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.7.52159.zip
unzip sonarqube-8.9.7.52159.zip
adduser sonaradmin
id sonaradmin
chown -R sonaradmin:sonaradmin sonarqube-8.9.7.52159
cd sonarqube-8.9.7.52159/
cd bin
ll
cd linux-x86-64/
ll
chmod -R 777 /opt/sonarqube-8.9.7.52159/
su - sonaradmin
cd /opt/
cd sonarqube-8.9.7.52159/
ll
cd bin
ll
cd linux-x86-64/
ll
./sonar.sh start
./sonar.sh status