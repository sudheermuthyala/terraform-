# treeaform Block
terraform {
  required_version = "~> 1.0.11"
  required_providers {
    aws = {
        version = "~> 3"
        source = "hashicorp/aws"
    }
  }
}

#provider block

provider "aws" {
  profile = "default"
  region =  "us-east-1"
}

te                      