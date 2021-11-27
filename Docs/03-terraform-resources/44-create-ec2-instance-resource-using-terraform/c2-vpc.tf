#   resources to create vpc
#   Resource-1: Create VPC
#   Resource-2: Create Subnets
#   Resource-3: Create internet-gateway
#   Resource-4: Create rout table
#   Resource-5: Create rout in rout Table for internet access
#   Resource-6: Associate Route Table with Subnet
#   Resource-7: Create Security Group in the VPC with port 80, 22 as inbound open
####################################################################################

#   Resource-1: Create VPC
resource "aws_vpc" "DEV-VPC" {
  cidr_block =  "10.0.0.0/16"

  tags = {
    Name  = "DEV-VPC"
  } 
  
}
#   Resource-2: Create Subnets
resource "aws_subnet" "DEV_SUBNET" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.DEV-VPC.id

  tags = {
    Name  = "DEV-VPC-SUBNET"
  } 
  
}
#   Resource-3: Create internet-gateway

resource "aws_internet_gateway" "DEV_IGW" {
  vpc_id = aws_vpc.DEV-VPC.id

  tags = {
    Name = "DEV_IGW"
  }
  
}
#   Resource-4: Create rout table

resource "aws_route_table" "DEV_R_TABLE" {
  vpc_id = aws_vpc.DEV-VPC.id
  
}

#   Resource-5: Create rout in rout Table for internet access
resource "aws_route" "DEV_ROUT" {
  route_table_id = aws_route_table.DEV_R_TABLE.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.DEV_IGW.id
  
}
#   Resource-6: Associate Route Table with Subnet
resource "aws_route_table_association" "DEV_R_T_ASSOCIATION" {
  route_table_id = aws_route_table.DEV_R_TABLE.id
  subnet_id = aws_subnet.DEV_SUBNET.id
  
}
#   Resource-7: Create Security Group in the VPC with port 80, 22 as inbound open

resource "aws_security_group" "DEV_PUB_SG" {
  name        = "DEV_PUB_SG"
  description = "Allow TLS inbound public traffic"
  vpc_id      = aws_vpc.DEV-VPC.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}