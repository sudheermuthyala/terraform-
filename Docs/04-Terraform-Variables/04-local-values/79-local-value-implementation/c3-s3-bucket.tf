resource "aws_s3_bucket" "mys3" {
  bucket = "${var.app_name}-${}-buscket"
  acl = "private"
  tags = {
    "Name" = "value"
    "env"  = var.envinorment_name
  }
}

variable "app_name" {
