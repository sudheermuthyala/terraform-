# treeaform Block
terraform {
  required_version = "~> 1.0.11"
  required_providers {
    aws = {
        version = "~> 3.0"
        source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "terraformsu"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

#provider block

provider "aws" {
  profile = "default"
  region =  "us-east-1"
}