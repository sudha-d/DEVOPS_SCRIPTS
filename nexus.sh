#!/bin/bash
sudo yum update -y
sudo su -
hostnamectl set-hostname nexus
exit
cd /opt
sudo yum update -y
sudo yum install -y java-1.8.0-openjdk-devel.x86_64
wget https://download.sonatype.com/nexus/3/nexus-3.37.3-02-unix.tar.gz
ls
tar -xvzf nexus-3.37.3-02-unix.tar.gz
ls -l
mv nexus-3.37.3-02 nexus
ls -la
cd nexus/
ls -la
cd bin/
ls -l
adduser nexus
passwd nexus ---> give your own passwd
visudo       ---> nexus ALL=(ALL) NOPASSWD:ALL
cd ..
pwd
ls -l
chown -R nexus:nexus nexus
chown -R nexus:nexus sonatype-work
ls  -l
cd nexus/bin/
ls -l
vi nexus.rc ---> uncomment #run_as_user="nexus"
vi nexus.vmoptions   ---> no need to change anything
cd ..
ls
cd /etc
ls
vi /etc/systemd/system/nexus.service  ---> paste it here
[Unit]
Description=nexus service
After=network.target
  
[Service]
Type=forking
LimitNOFILE=65536
ExecStart=/opt/nexus/bin/nexus start
ExecStop=/opt/nexus/bin/nexus stop
User=nexus
Restart=on-abort
TimeoutSec=600
  
[Install]
WantedBy=multi-user.target 
       
systemctl enable nexus
systemctl start nexus
systemctl status nexus
