## Terraform State list and show command
**This two commands comes under Terraform inspecting Stat**
- **terraform state list** This command is used to list resources within a Terraform state
- **terraform state show**  This command is used to show the Attributes of the single resource in the terraform state file 
- **terraform state** terraform state command query your `terraform.tfstate` file and it provides the informantion for us 

```t
# List resources form terraform state 
  terraform state list 
    - aws_instance
    - aws_security_group

# Show the attributes from the single resource form terraform state file
- terraform state show aws_instance.MY_ec2_VM
- terraform state show aws_security_group.allow_ssh

```


## Step-05: Terraform State Command
### Step-05-01: Terraform State List and Show commands
- These two commands comes under **Terraform Inspecting State**
- **terraform state list:**  This command is used to list resources within a Terraform state.
- **terraform  state show:** This command is used to show the attributes of a single resource in the Terraform state.
```t
# List Resources from Terraform State
terraform state list

# Show the attributes of a single resource from Terraform State
terraform  state show data.aws_ami.amzlinux
terraform  state show aws_instance.my-ec2-vm
```