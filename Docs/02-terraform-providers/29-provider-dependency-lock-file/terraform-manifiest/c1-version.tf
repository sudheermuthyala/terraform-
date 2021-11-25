terraform {
required_version = "~> 1.0.11"
required_providers {
  aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }

random  ={
    sousource = "hashicorp/aws"
}

  }
}


provider "aws" {
 region = us-east-1
 profile = "default" 
}
