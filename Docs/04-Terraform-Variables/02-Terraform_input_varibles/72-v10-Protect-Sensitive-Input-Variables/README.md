## Step-10: Protect Sensitive Input Variables
- v10-Sensitive-Input-Variables
- [AWS RDS DB INSTANCE](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance)

When using environment variables to set sensitive values, keep in mind that those values will be in your environment and command-line history Example: export TF_VAR_db_username=admin TF_VAR_db_password=adifferentpassword
When you use sensitive variables in your Terraform configuration, you can use them as you would any other variable.
Terraform will redact these values in command output and log files, and raise an error when it detects that they will be exposed in other ways.
Important Note-1: Never check-in secrets.tfvars to git repositories
Important Note-2: Terraform state file contains values for these sensitive variables terraform.tfstate. You must keep your state file secure to avoid exposing this data.