#   vpc resource block

#   Resource-1: Create VPC
resource "aws_vpc" "MY_DEV_VPC" {
    cidr_block = "10.0.0.0/16"

    tags = {
      "Name" = "MY_DEV_VPC"
    }
  
}

#   Resource-1: Create Subnets
resource "aws_subnet" "MY_DEV_VPC_PUBLIC_SUBNET-1" {
    vpc_id = aws_vpc.MY_DEV_VPC.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
  
}

