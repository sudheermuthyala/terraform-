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
      provider "aws" {
      region     = "us-west-2"
      access_key = "my-access-key"
      secret_key = "my-secret-key"
      }

- Environment variables
      You can provide your credentials via the AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY, environment variables, representing your AWS Access Key and AWS Secret Key, respectively. Note that setting your AWS credentials using either these (or legacy) environment variables will override the use of AWS_SHARED_CREDENTIALS_FILE and AWS_PROFILE. The AWS_DEFAULT_REGION and AWS_SESSION_TOKEN environment variables are also used, if applicable:
- Shared credentials/configuration file
- CodeBuild, ECS, and EKS Roles
- EC2 Instance Metadata Service (IMDS and IMDSv2)

*/