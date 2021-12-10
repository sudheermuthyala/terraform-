# vpc resource
resource "aws_vpc" "lab-vpc" {
  cidr_block = "10.0.0.0/16"
  provider = aws.aws.ap-south-1
  tags = {
    "Name" = "labvpc"
  }
}
