## Creating S3 Bucket for satatic website using terraform configuration 

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  arn = "public-read"
  tags = var.tags
  force_destroy = true
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::${var.bucket_name}/*"
            ]
        }
    ]
}
  EOF
  website {
    error_document = "error.html"
    index_document = "index.html"
  }
}