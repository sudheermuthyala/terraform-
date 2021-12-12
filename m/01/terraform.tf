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
  ami           = "ami-0ed9277fb7eb570c9"
  key_name      = "murali"
  instance_type = "t2.micro"
  availability_zone = "us-east-1b"
  

  tags = {
    "Name" = "murali-terraform"
  }

  ami-052cef05d01020f1d
}