# treeaform Block
terraform {
  required_version = "~> 1.1.1"
  required_providers {
    aws = {
        version = "~> 3.0"
        source = "hashicorp/aws"
    }
    null = {
      source = "hashicorp/null"
      version = "~> "
    }
  }
  #Adding Backend as S3 for Remote State Storage with State Locking
  
  # backend "s3" {
  #   bucket = "terraformsud"
  #   key    = "qa/terraform.tfstate"
  #   region = "us-east-1"

  #   # For State Locking in Dynamodb_Table
  #   dynamodb_table = "terraformdheeropsdev"

  
  # }
}

#provider block

provider "aws" {
  profile = "default"
  region =  "us-east-1"
}