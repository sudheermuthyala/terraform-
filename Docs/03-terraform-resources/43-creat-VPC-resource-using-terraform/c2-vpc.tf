#   vpc resource block
#   Resource-1: Create VPC

resource "aws_vpc" "MY_DEV_VPC" {
    cidr_block = "10.0.0.0/16"

    tags = {
      "key" = "value"
    }
  
}