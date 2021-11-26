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
resource "aws_route_table_association" "MY_DEV_ROUT_TABLE_ASSOCIATION" {
    route_table_id = aws_route_table.MY_DEV_ROUT_TABLE.id
    subnet_id = aws_subnet.MY_DEV_VPC_PUBLIC_SUBNET-1.id
  
}
#   - Resource-7: Create Security Group in the VPC with port 80, 22 as inbound open


resource "aws_security_group" "MY_DEV_SG" {
  name        = "MY_DEV_DEFAULT_SG"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "MY_DEV_DEFAULT_SG"
    from_port        = 22
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