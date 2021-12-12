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
  region = "ap-south-1"
  #region = "us-east-1"
  
}

resource "aws_instance" "myVM" {
  # ami           = "ami-0ed9277fb7eb570c9"
  ami           = "ami-052cef05d01020f1d"
  key_name      = "murali"
  instance_type = "t2.micro"
  #availability_zone = "us-east-1b"
  availability_zone = "ap-south-1a"
  
  lifecycle {
    create_before_destroy = true
  }
  

  tags = {
    "Name" = "murali-terraform"
  }

  
}