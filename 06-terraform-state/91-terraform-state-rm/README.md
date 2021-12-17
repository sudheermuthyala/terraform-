## terraform state rm command
- This command commes under Terraform moving Resurces
- Terraform state rm command is used to remove items from the terraform state 
- This command can remove single resources, single instances of a resource, entair modules, and more 
- If we remove using (terraform state rm aws_instance.my-ec2-vm)the resource from terraform state , that resource will become non terraform managed resource terraform no
- If you wnat any resource to be non terraform managed, if you want to remove the resources form terraform then you can use `terraform state rm aws_instance.my-ec2-vm` it will be removed from state that mean terraform dont have any information about it real cloud infra structure object it means terraform cannot manage that respective resource 
```t
# Terraform list resources
# Remove Resource from Terraform state
```

terraform  state show data.aws_ami.amzlinux
terraform  state show aws_instance.my-ec2-vm

# terraform **-dry-run**
- **command:** terraform state rm -dry-run aws_instance.MY_ec2_VM
- **output:**  Would remove aws_instance.MY_ec2_VM

#  Remove Resource from Terraform state
- **command:**  terraform state rm aws_instance.MY_ec2_VM 
- **output:** 
          Removed aws_instance.MY_ec2_VM
          Successfully removed 1 resource instance(s).
- **NOTE:**  this will remove the resource from terraform state,form now terraform is not responsible for current state resurce it's manage only terraform state 

# After **Terraform state rm** and after given **Terraform plan**
**Observation:**




### Step-05-03: Terraform State rm command
- This commands comes under **Terraform Moving Resources**
- The `terraform state rm` command is used to remove items from the Terraform state. 
- This command can remove single resources, single instances of a resource, entire modules, and more.
```t
# Terraform List Resources
terraform state list

# Remove Resources from Terraform State
terraform state rm -dry-run aws_instance.my-ec2-vm-new
terraform state rm aws_instance.my-ec2-vm-new
Observation: 
1) Firstly takes backup of current state file before removing (example: terraform.tfstate.1611930284.backup)
2) Removes it from terraform.tfstate file

# Terraform Plan
terraform plan
Observation: It will tell you that resource is not in state file but same is present in your terraform manifests (03-ec2-instace.tf - DESIRED STATE). Do you want to re-create it?
This will re-create new EC2 instance excluding one created earlier and running

Make a  Choice
-------------
Choice-1: You want this resource to be running on cloud but should not be managed by terraform. Then remove its references in terraform manifests(DESIRED STATE). So that the one running in AWS cloud (current infra) this instance will be independent of terraform. 
Choice-2: You want a new resource to be created without deleting other one (non-terraform managed resource now in current state). Run terraform plan and apply
LIKE THIS WE NEED TO MAKE DECISIONS ON WHAT WOULD BE OUR OUTCOME OF REMOVING A RESOURCE FROM STATE.

PRIMARY REASON for this is command is that respective resource need to be removed from as terraform managed. 

# Run Terraform Plan
terraform plan

# Run Terraform Apply
terraform apply 
```
