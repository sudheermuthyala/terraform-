# resouce to create vpc in ap-south-1

resource "aws_vpc" "MY-Vpc-in-ap-south-1" {
    cidr_block = "10.0.0.0/16"

    provider = aws.aws-south-1

    tags = {
      "Name" = "MY-Vpc-ap-south-1"
    }
  
}

