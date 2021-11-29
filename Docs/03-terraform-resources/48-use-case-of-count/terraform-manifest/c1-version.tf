#terraform block
terraform {
  required_version = "~> 1.0.11"
  required_providers {
    aws = {
      source = "hashicrop/aws"
      version = "~> 3."
            
    }
  }
}

#providerblock
provider "aws" {
  profile = "default"
  region  = "us-east-1"
  
}