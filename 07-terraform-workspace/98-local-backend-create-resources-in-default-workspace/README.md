## Create resources in default workspaces
- Default Workspace: Every initialized working directory has at least one workspace. 
- If you haven't created other workspaces, it is a workspace named **default**
- For a given working directory, only one workspace can be selected at a time.
- Most Terraform commands (including provisioning and state manipulation commands) only interact with the currently selected workspace.
```t
# Terraform Init
terraform init 

# List Workspaces
terraform workspace list

# Output Current Workspace using show
terraform workspace show

# Terraform Plan
terraform plan
Observation: This should show us two instances based on the statement in EC2 Instance Resource "count = terraform.workspace == "default" ? 2 : 1" because we are creating this in default workspace

# Terraform Apply
terraform apply -auto-approve

# Verify
Verify the same in AWS Management console
Observation: 
1) Two instances should be created with name as "vm-default-0, vm-default-1")
2) Security Groups should be created with names as "vpc-ssh-default, vpc-web-default)
3) Observe the outputs on CLI, you should see list of Public IP and Public DNS 
```

## Step-04: Create New Workspace and Provision Infra 
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
Create New Workspace and Provision Infra