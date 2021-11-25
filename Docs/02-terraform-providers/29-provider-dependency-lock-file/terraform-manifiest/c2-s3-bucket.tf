# resource "random_pet" "petname" {
#     length       = 5
#     separator    = "-"
  
# }

resource "aws_s3_bucket" "sample" {
    bucket  =  my
    acl     =  "public-read"
    region  =  "us-east-1" 
}