## Step-07: Terraform taint & untaint commands
-  These commands comes under **Terraform Forcing Re-creation of Resources**
- When a resource declaration is modified, Terraform usually attempts to update the existing resource in place (although some changes can require destruction and re-creation, usually due to upstream API limitations).
- **Example:** A virtual machine that configures itself with cloud-init on startup might no longer meet your needs if the cloud-init configuration changes.
- **terraform taint:** The `terraform taint` command manually marks a Terraform-managed resource as tainted, forcing it to be destroyed and recreated on the next apply.
- **terraform untaint:** 
  - The terraform untaint command manually unmarks a Terraform-managed resource as tainted, restoring it as the primary instance in the state. 
  - This reverses either a manual terraform taint or the result of provisioners failing on a resource.
  - This command will not modify infrastructure, but does modify the state file in order to unmark a resource as tainted.
```t
# List Resources from state
terraform state list

# Taint a Resource
terraform taint <RESOURCE_NAME_IN_TERRAFORM_LOCALLY>
terraform taint aws_instance.my-ec2-vm-new

# Terraform Plan
terraform plan
Observation: 
Message: "-/+ destroy and then create replacement"

# Untaint a Resource
terraform untaint <RESOURCE_NAME_IN_TERRAFORM_LOCALLY>
terraform untaint aws_instance.my-ec2-vm-new

# Terraform Plan
terraform plan
Observation: 
Message: "No changes. Infrastructure is up-to-date."
```