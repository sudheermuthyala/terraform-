# Resource aws ec2_instance terraform
resource "aws_instance" "MY_ec2_VM" {
    count = terraform.workspace == "default" ? 2 : 1 ## this is a condition i am writing for to create instance according to the workspace
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
      "Name" = "vm-${terraform.workspace}-${count.index}"
      # "demotag"  = "refreshtags"
      # "target" = "Target-Test-1"   // Adding New Tags for -target 

    }

  # Connection Block for Provisioners to connect to EC2 Instance
  connection {
    type = "ssh"
    host = self.public_ip   # Understand What is a Public IP
    user = "ec2-user"
    password = ""
    private_key = file("private-key/terraform.pem")
  }

 # Copies the application.html file to /tmp/application.html
  provisioner "file" {
    source =  "Applications/application.html"
    destination = "/tmp/application.html"
  }
  # Copies the string in content into /tmp/file.log
  provisioner "file" {
    content = "ami used: ${self.ami}" # Understand What is "Self"
    destination = "/tmp/"
  }
}
