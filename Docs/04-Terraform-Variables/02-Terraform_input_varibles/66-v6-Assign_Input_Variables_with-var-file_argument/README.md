# 06: Assign Input Variables with -var-file argument
- v6-Input-Variables-Assign-with-tfvars-var-file
- If we plan to use different names for .tfvars files, then we need to explicitly provide the argument var-file during the terraform plan or apply
- We will use following things in this example
    - c2-variables.tf: aws_region variable will be picked with default value
terraform.tfvars: ec2_instance_count variable will be picked from this file
web.tfvars: ec2_instance_type variable will be picked from this file
app.tfvars: ec2_instance_type variable will be picked from this file