# AWS EC2-instance Module 

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "Demo_on_Modules"
  count = 2 
  for_each = {
      key = "value"
  }

  ami                    = data.aws_ami.amzlinux.id
  instance_type          = "t2.micro"
  key_name               = "terraform"
  monitoring             = true
  vpc_security_group_ids = ["sg-05a9b3b6d33836a61"]     ## Get Default VPC Security Group ID
  subnet_id              = "subnet-0499eb0ee45615fca"   ## Get one Public Subnet ID from Default VPC
  user_data              = file("apache-install.sh")
  tags = {
    Name        = "ec2-instance-Module-${count.index}"
    Terraform   = "true"
    Environment = "dev"
  }
}