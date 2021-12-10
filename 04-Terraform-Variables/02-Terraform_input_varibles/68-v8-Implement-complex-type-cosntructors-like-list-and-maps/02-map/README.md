# 08: Implement complex type cosntructors like `list` and `maps`
# 08-02: Implement Vairable Type as Map
- map (or object): a group of values identified by named labels, like {name = "Mabel", age = 52}.
- Implement Map function for variable ec2_instance_tags

# Implement Map Function for tags
    variable "ec2_instance_tags" {
    description = "EC2 Instance Tags"
    type = map(string)
    default = {
        "Name" = "ec2-web"
        "Tier" = "Web"
    }

# Reference Values from Map in ec2-instance.tf
tags = var.ec2_instance_tags  

# Implement `Map Function for Instance Type`
# Important Note: comment "ec2_instance_type" variable with list function
    variable "ec2_instance_type_map" {
    description = "EC2 Instance Type using maps"
    type = map(string)
    default = {
        "small-apps" = "t3.micro"
        "medium-apps" = "t3.medium" 
        "big-apps" = "t3.large"
    }

# Reference Instance Type from Maps Variables
    instance_type = var.ec2_instance_type_map["small-apps"]
    instance_type = var.ec2_instance_type_map["medium-apps"]
    instance_type = var.ec2_instance_type_map["big-apps"]

# Initialize Terraform
terraform init

# Validate Terraform configuration files
terraform validate

# Format Terraform configuration files
terraform fmt

# Review the terraform plan
terraform plan 
