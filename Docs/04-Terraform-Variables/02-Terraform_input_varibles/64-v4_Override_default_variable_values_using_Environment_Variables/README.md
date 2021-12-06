# v4: Override default variable values using Environment Variables
- v4-Input-Variables-Override-with-Environment-Variables
- Set environment variables and execute terraform plan to see if it overrides default values
# Sample
- export TF_VAR_variable_name=value

# SET Environment Variables
- export TF_VAR_ec2_instance_count=1
- export TF_VAR_ec2_instance_type=t3.large
- echo $TF_VAR_ec2_instance_count, $TF_VAR_ec2_instance_type

# Initialize Terraform
terraform init

# Validate Terraform configuration files
terraform validate

# Format Terraform configuration files
terraform fmt

# Review the terraform plan
terraform plan

# UNSET Environment Variables after demo
unset TF_VAR_ec2_instance_count
unset TF_VAR_ec2_instance_type
echo $TF_VAR_ec2_instance_count, $TF_VAR_ec2_instance_type
