data "aws_ami" "amzlinux" {
  most_recent = 
  owners = [ "amazon" ]

  filter {
    name = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
  }
}