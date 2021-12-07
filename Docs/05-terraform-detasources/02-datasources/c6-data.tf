data "aws_ami" "amzlinux" {
  most_recent =  true
  owner = [ "amazon" ]
}