# resource block 
resource "aws_vpc" "my_vpc_us-west-1" {
    cidr_block = "10.0.0.0/16"
    provider = aws.aws-west-1
    tags = {
      "Name" = "MY-VPC-us-west-1"
    }
  
}