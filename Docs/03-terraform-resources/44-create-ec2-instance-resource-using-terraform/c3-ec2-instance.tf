# resource aws_ec2_instance 
resource "aws_instance" "MY_DEV_VM" {
    ami = "ami-04902260ca3d33422 "
    instance_type = "t2.micro"
    key_name = "terraform_k"
    subnet_id = aws_subnet.DEV_SUBNET.id
    vpc_security_group_ids = [ aws_security_group.DEV_PUB_SG.id ]
    #user_data = file(apache-install.sh)
    user_data = <<-EOF
    #! /bin/bash
    sudo yum update -y
    sudo yum install -y httpd
    sudo systemctl  start  httpd
    sudo systemctl enable httpd
    echo "<h1>Welcome to DevOps World ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
    EOF

}