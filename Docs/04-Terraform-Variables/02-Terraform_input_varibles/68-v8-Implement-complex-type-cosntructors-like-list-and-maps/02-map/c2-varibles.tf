# input Varibles
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

#over right the default varibles  using -var from cli 
# count
variable "ec2_count" {
    description = "Ec2_innstance count"
    type = number
    default = 1
  
}

variable "ec2_instance_tags" {
  description = "EC2 instance tags"
  type = map(string)
  default = {
    "Name" = "web"
    "project" = "roboshop"
  }
}
variable "ec2_instance_type" {
  description = "instance Type"
  type = list(string)
  default = [ "t2.small" , "t3.large" , "t3.xlarge" ]
}


