
/*
In this basic varibles we pass the varibles from defatlt block 
*/

#region
variable "aws_region" {
  description = "Region in which AWS resource to be created"
  type = string
  default = "us-east-1"
}

variable "app_name" {
  description = "Appname"
  type = string 
}

variable "envinorment_name" {
  description = "Envinorment name"
  type = string

}