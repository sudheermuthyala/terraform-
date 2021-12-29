# Build a Terraform Module

## Introduction
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

## Hosting a Static Website with AWS S3 using AWS Management Console
- **Reference Sub-folder:** v1-create-static-website-on-s3-using-aws-mgmt-console
- We are going to host a static website with AWS S3 using AWS Management console
###  Create AWS S3 Bucket
- Go to AWS Services -> S3 -> Create Bucket 
- **Bucket Name:** mybucket-1045 (Note: Bucket name should be unique across AWS)
- **Region:** US.East (N.Virginia)
- Rest all leave to defaults
- Click on **Create Bucket**

###  Enable Static website hosting
- Go to AWS Services -> S3 -> Buckets -> mybucket-1045 -> Properties Tab -> At the end
- Edit to enable **Static website hosting**
- **Static website hosting:** enable
- **Index document:** index.html
- Click on **Save Changes**

###  Remove Block public access (bucket settings)
- Go to AWS Services -> S3 -> Buckets -> mybucket-1045 -> Permissions Tab 
- Edit **Block public access (bucket settings)** 
- Uncheck **Block all public access**
- Click on **Save Changes**
- Provide text `confirm` and Click on **Confirm**

###  Add Bucket policy for public read by bucket owners
- Update your bucket name in the below listed policy
- **Location:** v1-create-static-website-on-s3-using-aws-mgmt-console/policy-public-read-access-for-website.json
```json
{
  "Version": "2012-10-17",
  "Statement": [
      {
          "Sid": "PublicReadGetObject",
          "Effect": "Allow",
          "Principal": "*",
          "Action": [
              "s3:GetObject"
          ],
          "Resource": [
              "arn:aws:s3:::mybucket-1045/*"
          ]
      }
  ]
}
```
- Go to AWS Services -> S3 -> Buckets -> mybucket-1045 -> Permissions Tab 
- Edit -> **Bucket policy** -> Copy paste the policy above with your bucket name
- Click on **Save Changes**

###  Upload index.html
- **Location:** v1-create-static-website-on-s3-using-aws-mgmt-console/index.html
- Go to AWS Services -> S3 -> Buckets -> mybucket-1045 -> Objects Tab 
- Upload **index.html**

###  Access Static Website using S3 Website Endpoint
- Access the newly uploaded index.html to S3 bucket using browser
```
# Endpoint Format
http://example-bucket.s3-website.Region.amazonaws.com/

# Replace Values (Bucket Name, Region)
http://mybucket-1045.s3-website.us-east-1.amazonaws.com/
```

###  Conclusion
- We have used multiple manual steps to host a static website on AWS
- Now all the above manual steps automate using Terraform in next step

