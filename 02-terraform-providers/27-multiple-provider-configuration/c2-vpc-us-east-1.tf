# resource block  to create vpc in us-east-1
resource "aws_vpc" "my_us-east-1-vpc" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    "Name" = "MY-VPC-us-east-1"
  }
  
}