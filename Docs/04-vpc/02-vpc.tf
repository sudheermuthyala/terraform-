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

resource "aws_internet_gateway" "DEV_IGW" {
    vpc_id = aws_vpc.MY_DEV_VPC.id
  
  tags = {
    "Name" = "DEV_IGW"
  }
}

#   step-4  Create Route Table

resource "aws_route_table" "DEV_ROUT_TABLE" {
    vpc_id = aws_vpc.MY_DEV_VPC.id

    tags = {
      "Name" = "DEV_ROUT_TABLE"
    }
}

# step-5  Create Route in Route Table for Internet Access
resource "aws_route" "DEV_ROUT" {
    route_table_id = aws_route_table.DEV_ROUT_TABLE.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.DEV_IGW.id
}

#   step-6  Associate Route Table with Subnet
resource "aws_route_table_association" "DEV_ROUT_TABLE_ASSO" {
  route_table_id = aws_route_table.DEV_ROUT_TABLE.id
  subnet_id = aws_subnet.DEV-SUBNET-1
}



#step-7  Create Security Group in the VPC with port 22 as inbound open

resource "aws_security_group" "DEV_allo_public" {
  name        = "DEV_allo_public"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.MY_DEV_VPC.id

  ingress {
    description      = "Allow ssh "
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
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
