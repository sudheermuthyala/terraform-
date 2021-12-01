
#region
variable "aws_region" {
  description = "Region in which AWS resource to be created"
  type = string
  default = "us-east-1"
}

# amiid
variable "ec2_ami_id" {
  description = "AMI_ID"
  type = string
  default = "ami-04902260ca3d33422"
}

# count
variable "ec2_count" {
    description = "Ec2_innstance count"
    type = number
    default = 1
  
}


/*
prompt varibles we pass the varibles from CLI when it prompt
*/


variable "ec2_instance_type" {
  description = "instance Type"
  t
}