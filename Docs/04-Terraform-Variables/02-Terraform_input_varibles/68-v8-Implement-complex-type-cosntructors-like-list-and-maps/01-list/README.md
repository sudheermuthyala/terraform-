# 08: Implement complex type cosntructors like list and maps
# 08-01: Implement Vairable Type as List
- list (or tuple): a sequence of values, like ["us-west-1a", "us-west-1c"]. Elements in a list or tuple are identified by consecutive whole numbers, starting with zero.
- Implement List function for variable ec2_instance_type



# Implement List Function in variables.tf
    variable "ec2_instance_type" {
    description = "EC2 Instance Type"
    type = list(string)
    default = ["t3.micro", "t3.small", "t3.medium"]
    }

# Reference Values from List in ec2-instance.tf
    instance_type = var.ec2_instance_type[0] --> t3.micro
    instance_type = var.ec2_instance_type[1] --> t3.small
    instance_type = var.ec2_instance_type[2] --> t3.medium

# Initialize Terraform
terraform init

# Validate Terraform configuration files
terraform validate

# Format Terraform configuration files
terraform fmt

# Review the terraform plan
terraform plan 
