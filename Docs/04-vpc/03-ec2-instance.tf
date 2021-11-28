# resource ec2 indtance 

resource "aws_instance" "MY_ec2_vM" {
    ami = "ami-0d718c3d715cec4a7"
    key_name = "terraform"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.DEV-SUBNET-1.id
    vpc_security_group_ids = [aws_security_group.DEV_allo_public.id]
    user_data = <<-EOF
    #! /bin/bash
    sudo yum update -y
    sudo yum install -y httpd
    sudo systemctl  start  httpd
    sudo systemctl enable httpd
    echo "<h1>Welcome to DevOps World ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
    EOF

    tags = {
      "Name" = "webserver"
    }
}


<<