## Outvaribles Defination

# arn of the s3-bucket
output "arn" {
  description = "arn of the s3-bucket"
  value = aws_s3_bucket.s3_bucket.arn
}

## Name of the s3 Bucket
output "name" {
  description = "Name (ID) of the Bucket "
  value = aws_s3_bucket.s3_bucket.id
}

## Website Domine Name of the Bucket
output "domain" {
  description = "Domain Name of the Bucket"
   value = aws_s3_bucket.s3_bucket.website_domain
}

## Website Endoint of bucket
output "endpoint" {
  
}
