# resource block  to create vpc in us-west-1
resource "aws_vpc" "my_vpc_us-west-1" {
    cidr_block = "10.0.0.0/16"
    provider = aws.aws-west-1
    tags = {
      "Name" = "MY-VPC-us-west-1"
    }
  
}

/*
Addition Note:

provider    =   <PROVIDER-NAME>.<ALIAS-NAME> # This is a Meta-Argument from Resources Section nothing but a Special Argument

*/