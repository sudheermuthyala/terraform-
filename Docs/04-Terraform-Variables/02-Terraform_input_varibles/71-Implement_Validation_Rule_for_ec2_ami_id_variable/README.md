# v9-03: Implement Validation Rule for ec2_ami_id variable
    variable "ec2_ami_id" {
    description = "AMI ID"
    type = string  
    default = "ami-0be2609ba883822ec"
    validation {
        condition = length(var.ec2_ami_id) > 4 && substr(var.ec2_ami_id, 0, 4) == "ami-"
        error_message = "The ec2_ami_id value must be a valid AMI id, starting with \"ami-\"."
    }
    }
- Run Terraform commands
```t
# Initialize Terraform
terraform init
# Validate Terraform configuration files
terraform validate
# Format Terraform configuration files
terraform fmt
# Review the terraform plan
terraform plan
```

