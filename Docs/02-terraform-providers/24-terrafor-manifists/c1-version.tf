/*
Terraform Block 
terraform configuration block
terraform settings block
*/

terraform {
  required_version = "~> 1.0.11"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

/*
# Provider Block
*/

provider "aws" {
  region = "us-east-1"
  profile = "default"
  
}
/*
authentication