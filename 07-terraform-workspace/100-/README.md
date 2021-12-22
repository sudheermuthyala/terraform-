## Step-05: Switch workspace and destroy resources
- Switch workspace from dev to default and destroy resources in default workspace
```t
# Show current workspace
terraform workspace show

# List Worksapces
terraform workspace list

# Workspace select
terraform workspace select default

# Delete Resources from default workspace
terraform destroy 

# Verify
1) Verify in AWS Mgmt Console (both instances and security groups should be deleted)
```

## Step-06: Delete dev workspace
- We cannot delete "default" workspace
- We can delete workspaces which we created (dev, qa etc)
```t
# Delete Dev Workspace
terraform workspace delete dev
Observation: Workspace "dev" is not empty.
Deleting "dev" can result in dangling resources: resources that
exist but are no longer manageable by Terraform. Please destroy
these resources first.  If you want to delete this workspace
anyway and risk dangling resources, use the '-force' flag.

# Switch to Dev Workspace
terraform workspace select dev

# Destroy Resources
terraform destroy -auto-approve

# Delete Dev Workspace
terraform workspace delete dev
Observation:
Workspace "dev" is your active workspace.
You cannot delete the currently active workspace. Please switch
to another workspace and try again.

# Switch Workspace to default
terraform workspace select default

# Delete Dev Workspace
terraform workspace delete dev
Observation: Successfully delete workspace dev

# Verify 
In AWS mgmt console, all EC2 instances should be deleted

Switch-workspace-and-destroy-resources