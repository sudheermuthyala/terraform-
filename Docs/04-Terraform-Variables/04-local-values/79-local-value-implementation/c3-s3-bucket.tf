resource "aws_s3_bucket" "mys3" {
  bucket = "${var.}-${}-buscket"
  acl = "private"
  tags = {
    "Name" = "value"
    "env"  = var.envinorment_name
  }
}