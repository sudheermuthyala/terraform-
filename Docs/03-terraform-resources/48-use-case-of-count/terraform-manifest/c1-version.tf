#terraform block
terraform {
  required_version = "~> 1.0.11"
  required_providers {
    aws = {
      source = "hashicrop/aws"
      versioversion = "value"
            
    }
  }
}

#providerblock
provider "aws" {
  profile = "default"
  region  = "us-east-1"
  
}