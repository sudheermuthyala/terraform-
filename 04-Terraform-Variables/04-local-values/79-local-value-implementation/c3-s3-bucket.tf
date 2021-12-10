/*
# create  s3 bucket - with input varibles & local values 
resource "aws_s3_bucket" "mys3" {
  bucket = "${var.app_name}-${var.envinorment_name}-buscket"
  acl = "private"
  tags = {
    "Name" = "${var.app_name}-${var.envinorment_name}-buscket"
    "env"  = var.envinorment_name
  }
}
*/


# Defining local values

locals {
  bucket-name = "${var.app_name}-${var.envinorment_name}-buscket"
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = local.bucket-name
  acl = "private"
  tags = {
    "Name"  =   local.bucket-name
    "env"   =   var.envinorment_name
  }
  
}