terraform {
  required_version = "~> 1.11.1"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"

    }
  }
}


provider "aws" {
    profile = "default"
    region = "us-east-1"
  
}

provider "aws" {
  profile = "default"
  region = "us-west-1"
  alias = aws.us-west-1
}