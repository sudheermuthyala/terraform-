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
Authentication
The AWS provider offers a flexible means of providing credentials for authentication. The following methods are supported, in this order, and explained below:

- Static credentials
      Static credentials can be provided by adding an access_key and secret_key in-line in the AWS provider block:
      Usage:
      

- Environment variables
- Shared credentials/configuration file
- CodeBuild, ECS, and EKS Roles
- EC2 Instance Metadata Service (IMDS and IMDSv2)

*/