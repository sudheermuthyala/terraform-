data "aws_ami" "amzlinux" {  
  owner = [ "amazon" ]

  filter {
      name = "name"
      values = [ "amzn2-ami-hvm-*" ]
  }

  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }

  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  
  filter {
    name = "architucture"
    values = [ "x86_64" ]
  }
}

