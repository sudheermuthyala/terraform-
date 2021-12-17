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

# Observation after Terraform Plan
**Observation:**
