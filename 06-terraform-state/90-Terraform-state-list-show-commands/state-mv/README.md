## Terraform State mv command
- This command comes under `Terraform Moving Resources`
- This command will move an item matched by the address given to the destinantion address 
- This command can also move to a destinantion address in a completely diferent state file 
- This is a Dangerous Command 
- very advanced usage command 
- results will be unpredictable if concept is not clear about terraform state files mainly desired state and current state 

### Step-05-02: Terraform State mv command
- This commands comes under **Terraform Moving Resources**
- This command will move an item matched by the address given to the
 destination address. 
- This command can also move to a destination address
 in a completely different state file
- Very dangerous command
- Very advanced usage command
- Results will be unpredictable if concept is not clear about terraform state files mainly  desired state and current state.  
- Try this in production environments, only  when everything worked well in lower environments. 
```t
# Terraform List Resources
terraform state list

# Terraform State Move Resources to different name
terraform state mv -dry-run aws_instance.my-ec2-vm aws_instance.my-ec2-vm-new 
terraform state mv aws_instance.my-ec2-vm aws_instance.my-ec2-vm-new 
ls -lrta

Observation: 
1) It should create a backup file of terraform.tfstate as something like this "terraform.tfstate.1611929587.backup"
1) It renamed the name of "my-ec2-vm" in state file to "my-ec2-vm-new". 
2) Run terraform plan and observe what happens in next run of terraform plan and apply
-----------------------------
# WRONG APPROACH 
-----------------------------
# WRONG APPROACH OF MOVING TO TERRAFORM PLAN AND APPLY AFTER ABOVE CHANGE terraform state mv CHANGE
# WE NEED TO UPDATE EQUIVALENT RESOURCE in terraform manifests to match the same new name. 

# Terraform Plan
terraform plan
Observation: It will show "Plan: 1 to add, 0 to change, 1 to destroy."
1 to add: New EC2 Instance will be added
1 to destroy: Old EC2 instance will be destroyed

DON'T DO TERRAFORM APPLY because it shows make changes. Nothing changed other than state file local naming of a resource. Ideally nothing on current state (real cloud environment should not change due to this)
-----------------------------

-----------------------------
# RIGHT APPROACH
-----------------------------
Update "c3-ec2-instance.tf"
Before: resource "aws_instance" "my-ec2-vm" {
After: resource "aws_instance" "my-ec2-vm-new" {  

Update all references of this resources in your terraform manifests
Update c5-outputs.tf
Before: value = aws_instance.my-ec2-vm.public_ip
After: value = aws_instance.my-ec2-vm-new.public_ip

Before: value = aws_instance.my-ec2-vm.public_dns
After: value = aws_instance.my-ec2-vm-new.public_dns

Now run terraform plan and you should see no changes to Infra

# Terraform Plan
terraform plan
Observation: 
1) Message-1: No changes. Infrastructure is up-to-date
2) Message-2: This means that Terraform did not detect any differences between your
configuration and real physical resources that exist. As a result, no
actions need to be performed.
 
