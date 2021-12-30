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
output "website_bucket_domain" {
  value = module.mY_s3_bucket.domain 
}
## S3 Bucket endpoint
output "website_bucket_endpoint" {
  value = module.mY_s3_bucket.endpoint 
}