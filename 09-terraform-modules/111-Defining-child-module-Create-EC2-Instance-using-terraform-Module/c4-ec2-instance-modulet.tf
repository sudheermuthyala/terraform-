# AWS EC2-instance Module 

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "Demo_on_Modules"

  ami                    = data.aws_ami.amzlinux.id
  instance_type          = "t2.micro"
  key_name               = "terraform"
  monitoring             = true
  vpc_security_group_ids = ["sg-05a9b3b6d33836a61"] ## Get Default VPC Security Group ID
  subnet_id              = "subnet-eddcdzz4"        ## Get one Public Subnet ID from Default

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}