## Terraform Workspaces in combination with Terraform Backend (Remote State Storage)
## Review terraform manifest (primarily c1-versions.tf)
- **Reference Sub-Folder:** v2-remote-backend
- Only change in the template is in **c1-versions.tf**, we will have the remote backend block which we learned during section **07-01-Terraform-Remote-State-Storage-and-Locking**
```t
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-stacksimplify"
    key    = "workspaces/terraform.tfstate"
    region = "us-east-1"  
  # For State Locking
    dynamodb_table = "terraform-dev-state-table"           
  }
```
###  Provision infra using default workspace
```t
# Initialize Terraform
terraform init

# List Terraform Workspaces
terraform workspace list

# Show current Terraform workspace
terraform workspace show

# Terraform Validate
terraform validate

# Terraform Format
terraform fmt

# Terraform Plan
terraform plan

# Terraform Apply
terraform apply -auto-approve

# Review State file in S3 Bucket for default workspace
Go to AWS Mgmt Console -> Services -> S3 -> terraform-stacksimplify -> workspaces -> terraform.tfstate
```
###  Create new workspace dev and provison infra using that workspace
```t
# List Terraform Workspaces
terraform workspace list

# Create New Terraform Workspace
terraform workspace new dev

# List Terraform Workspaces
terraform workspace list

# Show current Terraform workspace
terraform workspace show

# Terraform Plan
terraform plan

# Terraform Apply
terraform apply -auto-approve

# Review State file in S3 Bucket for dev workspace
Go to AWS Mgmt Console -> Services -> S3 -> terraform-stacksimplify -> env:/ -> dev -> workspaces -> terraform.tfstate
```

### Destroy resources in both workspaces (default, dev)

```t
# Show current Terraform workspace
terraform workspace show

# Destroy Resources in Dev Workspace
terraform destroy -auto-approve

# Show current Terraform workspace
terraform workspace show

# Select other workspace
terraform workspace select default

# Show current Terraform workspace
terraform workspace show

# Destroy Resources in default Workspace
terraform destroy -auto-approve

# Delete Dev Workspace
terraform workspace delete dev
```
###  Try deleting default workspace and understand what happens

```t
# Try deleting default workspace
terraform workspace delete default
Observation: 
1) Workspace "default" is your active workspace.
2) You cannot delete the currently active workspace. Please switch
to another workspace and try again.

# Create new workspace
terraform workspace new test1

# Show current Terraform workspace
terraform workspace show

# Try deleting default workspace now
terraform workspace delete default
Observation:
1) can't delete default state
```

### Clean-Up
```t
# Switch workspace to default
terraform workspace select default

# Delete test1 workspace
terraform workspace delete test1

# Clean-Up Terraform local folders
rm -rf .terraform*

# Clean-Up State files in S3 bucket 
Go to S3 Bucket and delete files
```


## References
- [Terraform Workspaces](https://www.terraform.io/docs/language/state/workspaces.html)
- [Managing Workspaces](https://www.terraform.io/docs/cli/workspaces/index.html)


terr Remote State Storage