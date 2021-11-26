#Terraform Block
terraform {
  required_version = "~> 1.0.11"
  required_providers {
    aws     ={
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}

# provider block

provider "aws" {
    profile = "default"
    region = 
  
}