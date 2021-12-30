variable "aws_reagion" {
    description = "Reagion In which AWS Resource to be created"
    default = "us-east-1"
    type = string   
}

## create Varible for bucket-Name
variable "my_s3_bucket_name" {
    description = "Name for s3-bucket"
    type = string
    default = "mybucket19121988"
}

variable "my_s3_tags" {
  description = "tags to AWS s3 Bucket"
  type = map(string)
  default = {
    "Terraform" = "true"
    "Env" = "dev"
    "tag-1" = "first"
    "tag-2" = "second"
  }
}