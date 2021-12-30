## calling a module

module "mY_s3_bucket" {
    source = "./modules/aws_s3_static_website_bucket" ## Mandatory
    #version = "value" ## optional
    bucket_name = var.my_s3_bucket_name
    tags    = var.my_s3_tags
}
