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
      version = "~> 3.1.0"
    }
    time = {
      source = "hashicorp/time"
      version = "~> 0.7.0"
    }
  }
 
}

#provider block

provider "aws" {
  profile = "default"
  region =  "us-east-1"
}