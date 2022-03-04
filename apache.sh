#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd 
sudo systemctl status httpd
echo <h1>hello<h1>
echo <h2>hello2<h2>
echo "sunny"
