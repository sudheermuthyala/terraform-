# resource: 8 aws_ec2_instance 
resource "aws_instance" "MY_DEV_VM" {
    ami = "ami-04902260ca3d33422"
    instance_type = "t2.micro"
    key_name = "terraform-k"
    subnet_id = aws_subnet.DEV_SUBNET.id
    vpc_security_group_ids = [ aws_security_group.DEV_PUB_SG.id ]
    user_data = file("apache-install.sh")    ## file(function) used 
    # user_data = <<-EOF
    # #! /bin/bash
    # sudo yum update -y
    # sudo yum install -y httpd
    # sudo systemctl  start  httpd
    # sudo systemctl enable httpd
    # echo "<h1>Welcome to DevOps World ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
    # EOF

    user_data = <<-EOF
#! /bin/bash
# Instance Identity Metadata Reference - https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-identity-documents.html
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start  
sudo echo '<h1>Welcome to Muthyala Sudheer Naidu Terraform - APP-1</h1>' | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app1
sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(250, 210, 210);"> <h1>Muthyala Sudheer Naidu Terraform- APP-1</h1> <p>Terraform Demo</p> <p>Application Version: V1</p> </body></html>' | sudo tee /var/www/html/app1/index.html
sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document -o /var/www/html/app1/metadata.html
EOF
    tags = {
      "Name" = "webserver"
    }
}