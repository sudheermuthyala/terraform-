#   vpc resource block

#   Resource-1: Create VPC
resource "aws_vpc" "MY_DEV_VPC" {
    cidr_block = "10.0.0.0/16"

    tags = {
      "Name" = "MY_DEV_VPC"
    }
  
}

resource "aws_subnet" "MY_DEV_VPC_PUBLIC_SUBNET-1" {
    vpc_id = aws_vpc.MY_DEV_VPC.id
    cidr_block = "  "
  
}

