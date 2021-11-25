terraform {
required_version = "<= 1.0.0"
required_providers {
  aws = {
      source = "hashicorp/aws"
      version = ">= 2.0.0"
    }
  }
}


provider "aws" {
 region = "us-east-1"
 profile = "default" 
}
