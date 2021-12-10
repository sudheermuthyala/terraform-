# Step-02: Input Variables Assign When Prompted
- Add a new variable in variables.tf named ec2_instance_type without any default value.
- As the variable doesn't have any default value when you execute terraform plan or terraform apply it will prompt for the variable.

# Initialize Terraform
terraform init

# Validate Terraform configuration files
terraform validate

# Format Terraform configuration files
terraform fmt

# Review the terraform plan
terraform plan
