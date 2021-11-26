// Create ec2_instance
// https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "MY_ec2_vm" {
  ami               = "ami-04902260ca3d33422"
  availability_zone = "us-east-1a"
  instance_type     = "t2.micro"

  tags = {
    "Name"          = "Demo-Ec2-vm"
    # "update-tag"    = "Tag-1"
    # "update-tage-1" = "Tage-2"
  }

}