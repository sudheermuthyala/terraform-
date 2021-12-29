# Terraform Module Basics
1. Introduction - Module Basics  
  - Root Module
  - Child Module
  - Published Modules (Terraform Registry)

2. Module Basics 
  - Defining a Child Module
    - Source (Mandatory)
    - Version
    - Meta-arguments (count, for_each, providers, depends_on, )
    - Accessing Module Output Values
    - Tainting resources within a module
## Defining a Child Module 
- We need to Understand about the following
    - Module source (Mandatory): To Start with. I am using Terraform Registry
    - Module version (Optional): Recomended to use module version
- Create a sample EC2-Instance Module
    - c1-versions.tf : Standard
    - c2-varibles.tf : Standard
    - c3-ami-datasource.tf Standard
    - c4-ec2-instance-module.tf : We will focus on building this Template
    - **Reference** Terraform Registroy for [EC2-Instance](https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest)