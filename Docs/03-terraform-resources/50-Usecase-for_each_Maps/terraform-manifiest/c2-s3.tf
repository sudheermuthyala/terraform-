#terraform s3  resources
resource "aws_s3_bucket" "b" {

    for_each = {
        dev = "value"
    }
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}