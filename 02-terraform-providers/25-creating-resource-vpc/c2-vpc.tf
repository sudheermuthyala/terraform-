/*
Resource block
Resource-1  : Create Vpc
*/

resource "aws_vpc" "MyVpc-1" {
    cidr_block = "10.0.0.0/16"
    tags = {
        "Name"    = "MyVpc"
    }
  
}