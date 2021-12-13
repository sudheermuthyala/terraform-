# treeaform Block
terraform {
  required_version = "~> 1.0.11"
  required_providers {
    aws = {
        version = "~> 3.0"
        source = "hashicorp/aws"
    }
  }
  # Adding Backend as S3 for Remote State Storage with State Locking
  backend "s3" {
    bucket = "terraformsu"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  # For State Locking in Dynamodb_Table
  }
}

#provider block

provider "aws" {
  profile = "default"
  region =  "us-east-1"
}