variable "aws_region" {
  description = "Region in which AWS resource to be created"
  type = string
  default = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI_ID"
  type = string
  default = "ami-04902260ca3d33422"
}

# amiid
# count