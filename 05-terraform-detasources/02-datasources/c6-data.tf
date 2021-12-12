data "aws_ami" "amzlinux" {
  most_recent =  true
  owner = [ "amazon" ]

  filter {
      name = "name"
      values = [ "amzn2-ami-hvm-*" ]
  }

  filter {
    name = "root-device-type"
    values = [ "ebs" ]]
  }

  filter {
    name = "virtualization-type"
    values = [ "hvm" ]]
  }
  
  filter {
    name = "architucture"
    values = [ "x84_64" ]
  }
}

