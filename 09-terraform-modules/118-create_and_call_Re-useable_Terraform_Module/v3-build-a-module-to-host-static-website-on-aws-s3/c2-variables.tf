variable "aws_reagion" {
    description = "Reagion In which AWS Resource to be created"
    default = "us-east-1"
    type = string   
}

## create Varible for bucket-Name
variable "bucket_name" {
    description = "Name for s3-bucket"
    type = string
    default = "mybucket_terraform1099"
}

variable "s3_tags" {
  description = "tags to AWS s3 Bucket"
  type = map(string0)
  
}