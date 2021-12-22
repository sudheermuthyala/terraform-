## My Observation
```
- when we create a new workspace like ex: DEV this will create 
```
## Create New Workspace and Provision Infra 
```t
# Create New Workspace
terraform workspace new dev

# Verify the folder
cd terraform.tfstate.d 
cd dev
ls
cd ../../

# Terraform Plan
terraform plan
Observation:  This should show us creating only 1 instance based on statement "count = terraform.workspace == "default" ? 2 : 1" as we are creating this in non-default workspace named dev

# Terraform Apply
terraform apply -auto-approve

# Verify Dev Workspace statefile
cd terraform.tfstate.d/dev
ls
cd ../../
Observation: You should fine "terraform.tfstate" in "current-working-directory/terraform.tfstate.d/dev" folder

# Verify EC2 Instance in AWS mgmt console
Observation:
1) Name should be with "vm-dev-0"
2) Security Group names should be as "vpc-ssh-dev, vpc-web-dev"
```
