# resouce to create vpc in ap-south-1

resource "aws_vpc" "MY-Vpc-in-ap-south-1" {
    cidr_block = "10.0.0.0/16"

    tags = {
      "Name" = "MY"
    }
  
}