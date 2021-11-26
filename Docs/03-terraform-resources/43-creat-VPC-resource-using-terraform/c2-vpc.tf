# vpc resource block
resource "aws_vpc" "MY_DEV_VPC" {
    cidr_block = 10.0.0.0/16
  
}