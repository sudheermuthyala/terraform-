output "arn" {
  description = "arn of the s3-bucket"
  value = aws_s3_bucket.s3_bucket.arn
}