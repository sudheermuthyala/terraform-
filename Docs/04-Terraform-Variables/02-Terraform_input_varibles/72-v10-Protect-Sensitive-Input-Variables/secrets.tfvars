/*
Important Note-1: Never check-in secrets.tfvars to git repositories
Important Note-2: Terraform state file contains values for these sensitive variables terraform.tfstate. You must keep your state file secure to avoid exposing this data.
*/
db_username = admin
db_password = sensitive123

// NOTE-1: this is a lab Demo
// NOTE-2: we ned to pass the `secrets.tfvars` -var-file="secrets.tfvars"

