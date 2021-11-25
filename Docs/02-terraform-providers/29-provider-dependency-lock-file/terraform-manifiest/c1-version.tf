terraform {
required_version = "~> 1.0.11"
required_providers {
  aws = {
      source = "hashicorp/aws"
      version = ">= 2.0"
    }

random  ={
    source = "hashicorp/aws"
    version = "3.0.0"
}

  }
}


provider "aws" {
 region = us-east-1
 profile = "default" 
}
