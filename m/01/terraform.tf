# terraform Block
terraform {
  required_version = "~> 1.0.0"
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}


# provider Block
provider "aws" {
  profile = "default"
  region = "us-east-1"
}

resource "aws_instance" "myVM" {
  
}