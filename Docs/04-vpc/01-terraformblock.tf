
#terrafrorm block 

terraform {
  required_version = "~> 1.0.11"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"

    }
  }
}

#provider block

provider "aws" {
  region = "us-east-1"
  profile = "default"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

export AWS_ACCESS_KEY_ID="anaccesskey"