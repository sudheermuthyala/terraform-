/*
Terraform Block 
terraform configuration block
terraform settings block
terraform.tfstate   
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

      Usage:
      provider "aws" {}

      Note: We need to export the credentials 
            
            export AWS_ACCESS_KEY_ID="anaccesskey"
            export AWS_SECRET_ACCESS_KEY="asecretkey"
            export AWS_DEFAULT_REGION="us-west-2"


- Shared credentials/configuration file
      You can use an AWS credentials or configuration file to specify your credentials. The default location is $HOME/.aws/credentials on Linux and macOS, or "%USERPROFILE%\.aws\credentials" on Windows. You can optionally specify a different location in the Terraform configuration by providing the shared_credentials_file argument or using the AWS_SHARED_CREDENTIALS_FILE environment variable. This method also supports a profile configuration and matching AWS_PROFILE environment variable:
      
      1)  ~/.aws/credentials
          [default]
          aws_access_key_id=AKIAIOSFODNN7EXAMPLE
          aws_secret_access_key=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY

      2)  ~/.aws/config
          [default]
          region=us-west-2
          output=json
          
      Usage:
      provider "aws" {
      region                  = "us-west-2"
      profile                 = "customprofile"  (if profile not define it will take default profile)
}

- CodeBuild, ECS, and EKS Roles
- EC2 Instance Metadata Service (IMDS and IMDSv2)



#terraform.tfstate   
    
    terraform.tfstate  will creats while we creat any resource this terraform.tfstate ile is nothing but a
    terraform configuration database (in simple terms) what ever the resource we create in aws it will creat  a reference file that is nothing but terraform.statefiletfstate
    terraform configuration database (in simple terms) what ever the resource we create in aws it will creat  a reference file that is nothing but terraform.    terraform configuration database (in simple terms) what ever the resource we create in aws it will creat  a reference file that is nothing but terraform.tfstate file


*/