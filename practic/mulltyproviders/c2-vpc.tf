# vpc resource without 
resource "aws_vpc" "lab-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "labvpc"
  }
}
