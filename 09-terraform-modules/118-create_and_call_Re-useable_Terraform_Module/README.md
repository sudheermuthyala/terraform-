## Build a Terraform Module To Host a Static Website on AWS S3
# Create Module Folder Structure
- we are going to create `modules` folder and in that we are going to create a module named `aws_s3_static_website_bucket` (module-name)
- we will copey required files from previous section for this respective module
- Terraform working Directory: build_a_module_to_host_static_website_on_aws_s3
    - modules
        - Module-1: `aws_s3_static_website_bucket`
            - main.tf
            - variables.tf
            - outputs.tf
            - README.md
            - LICENSE
- Inside `modules/aws_s3_static_website_bucket`,copy below listed three files from `116-create-a-terraform-manifiest-to-create-static-website`
    - main.tf
    - variables.tf
    - outputs.tf


## Call Module from Terraform Work Directory (Root Module)
- create Terraform Configuration in Root module by calling the newle 