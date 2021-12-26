# Resource aws ec2_instance terraform
resource "aws_instance" "MY_ec2_VM" {
  #count                  = terraform.workspace == "default" ? 2 : 1 ## this is a condition i am writing for to create instance according to the workspace
  ami                    = data.aws_ami.amzlinux.id
  instance_type          = var.ec2_instance_type
  key_name               = "terraform"
  #count = var.ec2_count
  vpc_security_group_ids = [aws_security_group.allow_ssh.id, aws_security_group.vpc-web.id]
  user_data = file("apache-install.sh")
  # user_data              = <<-EOF
  #   #! /bin/bash
  #   sudo yum update -y
  #   sudo yum install -y httpd
  #   sudo systemctl  start  httpd
  #   sudo systemctl enable httpd
  #   echo "<h1>Welcome to DevOps World ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
  #   EOF

  tags = {
    "Name" = "vm-${terraform.workspace}"
    # "demotag"  = "refreshtags"
    # "target" = "Target-Test-1"   // Adding New Tags for -target

  }
}

## Wait for 90 seconds after creating the Above EC2 Instance
resource "time_sleep" "Wait_90_seconds" {
  depends_on = [ aws_instance.MY_ec2_VM  ]
  create_duration = "90s"
}

resource "null_resource" "sync_application_static" {
  depends_on = [ time_sleep.Wait_90_seconds  ]
  triggers = {
    always-update = timestamp()
  }

# connection Block for provisioners to connect to EC2 Instance
  connection {
    type        = "ssh"
     #host        = self.public_ip   # Understand What is a Public IP
     host        = aws_instance.MY_ec2_VM.public_ip  # Understand What is a Public IP
     user        = "ec2-user"
     password    = ""
     private_key = file("private-key/terraform.pem")
 
  }
# Copy the cart-app folder to /tmp
  provisioner "file" {
    source =  "Applications/cart-app"
    destination = "/tmp"

  }
  provisioner "remote-exec" {
    inline = [
      sudo cp -r 
    ]
  
  }
  
}

  
#   # Connection Block for Provisioners to connect to EC2 Instance
#   connection {
#     type        = "ssh"
#     host        = self.public_ip   # Understand What is a Public IP
#     user        = "ec2-user"
#     password    = ""
#     private_key = file("private-key/terraform.pem")
#   }

#   provisioner "local-exec" {
#     command = "echo ${aws_instance.MY_ec2_VM.public_ip} >>creation-time-output-ip.txt"
#     working_dir = "local-exec-output-files/"
#   }

#   provisioner "local-exec" {
#     when = destroy
#     command = "echo Destroy Time provisioner Instance Destroyed at `date` >> destroy-time-output.txt"
#     working_dir = "local-exec-output-files/"
#   }
# }

