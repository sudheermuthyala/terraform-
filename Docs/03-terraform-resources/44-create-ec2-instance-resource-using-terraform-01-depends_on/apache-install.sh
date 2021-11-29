#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl  start  httpd
sudo systemctl enable httpd
echo "<h1>Welcome to DevOps World ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
