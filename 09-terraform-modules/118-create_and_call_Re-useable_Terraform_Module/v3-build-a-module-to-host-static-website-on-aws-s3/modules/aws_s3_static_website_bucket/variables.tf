variable "bucket_name" {
  description = "Providing Bucket name"
  type = string
}

variable "tags" {
  description = "Tags related to s3 Bucket"
  type = map(string)
  default = {}
}