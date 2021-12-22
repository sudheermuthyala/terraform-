# Resource aws ec2_instance terraform
resource "aws_instance" "MY_ec2_VM" {
    count
    ami = data.aws_ami.amzlinux.id
    instance_type = var.ec2_instance_type 
    key_name = "terraform"
    #count = var.ec2_count
    vpc_security_group_ids = [ aws_security_group.allow_ssh.id,  aws_security_group.vpc-web.id ]
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
      "demotag"  = "refreshtags"
      "target" = "Target-Test-1"   // Adding New Tags for -target 

    }
  
}

#3) It is not touching the new resource which we are creating now. It will be in terraform configuration but not getting provisioned when we are using -target
resource "aws_instance" "my-demo-vm" {
  ami           = data.aws_ami.amzlinux.id 
  instance_type = var.ec2_instance_type   
  tags = {
    "Name" = "demo-vm1"
  }
}