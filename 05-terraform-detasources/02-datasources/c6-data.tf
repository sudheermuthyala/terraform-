data "aws_ami" "amzlinux" {
  most_recent = true
  /*
  without most resent Aurgement
  # most_recent = true //│ Error: Your query returned more than one result. Please try a more specific search criteria, or set `most_recent` attribute to true.

  owners = [ "amazon" ]
  filter {
    name = "name"
    #values = [ "amzn2-ami-hvm-*" ]
    values = [ "amzn2-ami-hvm-*-gp2" ]
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
    name = "architecture"
    values = [ "x86_64" ]
  }
}