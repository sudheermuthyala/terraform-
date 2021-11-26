#   vpc resource block

#   Resource-1: Create VPC
resource "aws_vpc" "MY_DEV_VPC" {
    cidr_block = "10.0.0.0/16"

    tags = {
      "Name" = "MY_DEV_VPC"
    }
  
}

#   Resource-2: Create Subnets
resource "aws_subnet" "MY_DEV_VPC_PUBLIC_SUBNET-1" {
    vpc_id = aws_vpc.MY_DEV_VPC.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
  
}

#   Resource-3: Create internet-gateway

resource "aws_internet_gateway" "MY_DEV_IGW" {
    vpc_id = aws_vpc.MY_DEV_VPC.id
  
}


#   Resource-4: Create rout table
resource "aws_route_table" "MY_DEV_ROUT_TABLE" {
  vpc_id = aws_vpc.MY_DEV_VPC.id  
}

#   Resource-5: Create rout in rout Table for internet access

resource "aws_route" "MY_DEV_ROUT" {
    route_table_id = aws_route_table.MY_DEV_ROUT_TABLE.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.MY_DEV_IGW.id 
  
}
#   - Resource-6: Associate Route Table with Subnet
resource "aws_route_table_association" "MY_DEV_ROUT_TABLE" {
  
}
#   - Resource-7: Create Security Group in the VPC with port 80, 22 as inbound open
