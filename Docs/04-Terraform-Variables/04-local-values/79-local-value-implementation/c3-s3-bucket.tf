resource "aws_s3_bucket" "mys3" {
  bucket = "${}-${}-busc"
  acl = "private"
  tags = {
    "Name" = "value"
    "env"  = var.envinorment_name
  }
}