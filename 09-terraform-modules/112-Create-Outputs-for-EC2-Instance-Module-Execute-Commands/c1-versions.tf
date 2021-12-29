# treeaform Block
terraform {
  required_version = "~> 1.1.1"
  required_providers {
    aws = {
        version = "~> 3.0"
        source = "hashicorp/aws"
    }
  }   
}

#provider block

provider "aws" {
  profile = "default"
  region =  "us-east-1"
}
