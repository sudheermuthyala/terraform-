# Resource aws ec2_instance terraform
resource "aws_instance" "MY_ec2_VM" {
    ami = var.ec2_ami_id
    instance_type = "t2.micro"
    key_name = "terraform-k"
    count = var.ec2_count
    vpc_security_group_ids = [ aws_security_group.allow_ssh.id,  ]
    #user_data = file("apache-install.sh")
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