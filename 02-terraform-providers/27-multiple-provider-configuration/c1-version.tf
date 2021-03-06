#Terrafrom Block File
terraform {
  required_version = "1.0.11"
  required_providers {
    aws =   {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  } 
}


#Provider-1     for US-east-1 (default-provider)
provider "aws" {
    profile = "default"
    region  = "us-east-1"
  
}


#Provider-2     for US-west-1 (second provider)

provider "aws" {
    profile = "default"
    region  = "us-west-1"
    alias = "aws-west-1" 
  
}

#   provider-3      for ap-south-1 

provider "aws" {
    profile = "default"
    region = "ap-south-1"
    alias = "aws-south-1"
  
}