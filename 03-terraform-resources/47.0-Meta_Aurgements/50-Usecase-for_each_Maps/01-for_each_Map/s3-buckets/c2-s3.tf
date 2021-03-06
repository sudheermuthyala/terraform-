#terraform s3  resources
resource "aws_s3_bucket" "b" {

  for_each = {
    dev      = "dev-my-tf-test-bucket"
    qa       = "qa-my-tf-test-bucket"
    stag     = "stag-my-tf-test-bucket"
    pre-prod = "pre-prod-my-tf-test-bucket"
    prod     = "prod-my-tf-test-bucket"

  }

  
  bucket = "${each.key}-${each.value}"
  acl    = "private"

  tags = {
    environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachValue   = each.value
  }
}