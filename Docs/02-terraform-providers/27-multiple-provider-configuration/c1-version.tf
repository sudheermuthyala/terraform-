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


#Provider-1     for US
provider "aws" {
    profile = "default"
    region  = "us-east-1"
  
}