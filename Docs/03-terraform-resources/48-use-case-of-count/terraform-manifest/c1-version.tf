#terraform block
terraform {
  required_version = "~> 1.0.11"
  required_providers {
    aws = {
      source = "hashicrop/aws"
            
    }
  }
}
#providerblock

provider "aws" {
  prof
}