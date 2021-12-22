
# Terraform Workspaces

## Step-01: Introduction
- We are going to create 2 more workspaces (dev,qa) in addition to default workspace
- Update our terraform manifests to support `terraform workspace` 
  - Primarily for security group name to be unique for each workspace
  - In the same way for EC2 VM Instance Name tag. 
- Master the below listed `terraform workspace` commands
  - terraform workspace show        -> this will show current workspace
  - terraform workspace list        -> This will list all a
  - terraform workspace new
  - terraform workspace select
  - terraform workspace delete


## Step-02: Update terraform manifests to support multiple workspaces
- **Sub-folder we are working on:** v1-local-backend
- Ideally, AWS don't allow to create a security group with same name twice. 
- With that said, we need to change our security group names in our `c2-security-groups.tf`
- At the same time, just for reading convenience we can also have our EC2 Instance `Name tag` also updated inline with workspace name. 
- What is **${terraform.workspace}**? - It will get the workspace name 
- **Popular Usage-1:** Using the workspace name as part of naming or tagging behavior
- **Popular Usage-2:** Referencing the current workspace is useful for changing behavior based on the workspace. For example, for non-default workspaces, it may be useful to spin up smaller cluster sizes.
```t
# Change-1: Security Group Names
  name        = "vpc-ssh-${terraform.workspace}"
  name        = "vpc-web-${terraform.workspace}"  

# Change-2: For non-default workspaces, it may be useful to spin up smaller cluster sizes.
  count = terraform.workspace == "default" ? 2 : 1  
This will create 2 instances if we are in default workspace and in any other workspaces it will create 1 instance

# Change-3: EC2 Instance Name tag
    "Name" = "vm-${terraform.workspace}-${count.index}"

# Change-4: Outputs
  value = aws_instance.my-ec2-vm.*.public_ip
  value = aws_instance.my-ec2-vm.*.public_dns    
You can create a list of all of the values of a given attribute for the items in the collection with a star. For instance, aws_instance.my-ec2-vm.*.id will be a list of all of the Public IP of the instances.  
```
