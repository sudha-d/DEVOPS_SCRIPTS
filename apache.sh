#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd 
sudo systemctl status httpd
echo <h1>hello<h1>
<<<<<<< HEAD
echo <h2>hello2<h2>
echo "sunny"
=======
echo <h2>hello1<h2>
echo "hello3"
>>>>>>> 7f01506cb6723d44c4663c2d9aea1b91da018120
