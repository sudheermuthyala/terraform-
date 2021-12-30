## outputs Definations

## S3 Bucket ARN
output "website_bucket_arn" {
  value = module.mY_s3_bucket.arn
}
## S3 Bucket Name
output "website_bucket_name" {
  value = module.mY_s3_bucket.name  
}
## S3 Bucket Domain
## S3 Bucket endpoint
