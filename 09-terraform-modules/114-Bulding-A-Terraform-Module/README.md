## Bulding a Terraform Reuseable Modules
# Build a Terraform Module

## Step-01: Introduction
- Build a Terraform Module
    - Create a Terraform module
    - Use local Terraform modules in your configuration
    - Configure modules with variables
    - Use module outputs
    - We are going to write a local re-usable module for the following usecase.
- **Usecase: Hosting a static website with AWS S3 buckets**
1. Create an S3 Bucket
2. Create Public Read policy for the bucket
3. Once above two are ready, we can deploy Static Content 
4. For steps, 1 and 2 we are going to create a re-usable module in Terraform
- **How are we going to do this?**
- We are going to do this in 3 sections
- **Section-1 - Full Manual:** Create Static Website on S3 using AWS Management Consoleand host static content and test 
- **Section-2 - Terraform Resources:** Automate section-1 using Terraform Resources
- **Section-3 - Terraform Modules:** Create a re-usable module for hosting static website by referencing section-2 terraform configuration files. 
