## calling a module

module "mY_s3_bucket" {
    source = "./modules/aws_s3_static_website_bucket" ## Mandatory
    #version = "value" ## optional
    bucket_name = var.bucket_name
    tags    = var.s3_tags
}
