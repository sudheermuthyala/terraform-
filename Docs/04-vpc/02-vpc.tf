/*
Create VPC using manual

  Create VPC Resources listed below
step-1  Create VPC
step-2  Create Subnet
step-3  Create Internet Gateway (Attach to required vpc EX: my vpc)
step-4  Create Route Table
step-5  Create Route in Route Table for Internet Access
step-6  Associate Route Table with Subnet
step-7  Create Security Group in the VPC with port 22 as inbound open
*/

#step-1  Create VPC

resource "aws_vpc" "MY_DEV_VPC" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "MY_DEV_VPC"
  }
}


#   step-2  Create Subnet

resource "aws_subnet" "DEV-SUBNET-1" {
    cidr_block = "10.0.0.0/24"
    vpc_id = aws_vpc.MY_DEV_VPC.id
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = false

  
  tags = {
    "Name" = "DEV-SUBNET-1"
  }
}

#   step-3  Create Internet Gateway (Attach to required vpc EX: my vpc)
