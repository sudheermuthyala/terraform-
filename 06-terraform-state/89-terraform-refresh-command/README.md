## Terraform State Command
## step-1: Introduction 
- Terraform Commands
  - terraform plan
  - terraform show
  - terraform refresh 
  - terraform plan (internally calles refresh)
  - terraform state
  - terraform force-unlock
  - terraform taint
  - terraform untaint
  - terraform apply target Command
  


# explination for Terraform Commands
  - `terraform plan` -out=plan.out [This will store output of that terraform configuration into plan.out]

  - `terraform show` The `terraform show` command is used to provide human-readable output from a terraform.tfstate file out out or plan file. This can be used to inspect a plan to ensure that

# terraform refresh in detail 
  - `terraform refresh`  This command comes under `Terraform inspecting State `


## Step-04: Understand terraform refresh in detail
- This commands comes under **Terraform Inspecting State**
- Understanding `terraform refresh` clears a lot of doubts in our mind and terraform state file and state feature
- The terraform refresh command is used to reconcile the state Terraform knows about (via its state file) with the real-world infrastructure. 
- This can be used to detect any drift from the last-known state, and to update the state file.
- This does not modify infrastructure, but does modify the state file. If the state is changed, this may cause changes to occur during the next plan or apply.
- **terraform refresh:** Update local state file against real resources in cloud
- **Desired State:** Local Terraform Manifest (All *.tf files)
- **Current State:**  Real Resources present in your cloud
- **Command Order of Execution:** refresh, plan, make a decision, apply
- Why? Lets understand that in detail about this order of execution
### Step-04-01: Add a new tag to EC2 Instance using AWS Management Console
```t
"demotag" = "refreshtest"
```

### Step-04-02: Execute terraform plan  
- You should observe no changes to local state file because plan does the comparison in memory 
- Verify S3 Bucket - no update to tfstate file about the change 
```t
# Execute Terraform plan
terraform plan 
```
### Step-04-03: Execute terraform refresh 
- You should see terraform state file updated with new demo tag
```
# Execute terraform refresh
terraform refresh

# Review terraform state file
1) terraform show
2) Also verify S3 bucket, new version of terraform.tfstate file will be created
```
### Step-04-04: Why you need to the execution in this order (refresh, plan, make a decision, apply) ?
- There are changes happened in your infra manually and not via terraform.
- Now decision to be made if you want those changes or not.
- **Choice-1:** If you dont want those changes proceed with terraform apply so manual changes we have done on our cloud EC2 Instance will be removed.
- **Choice-2:** If you want those changes, refer `terraform.tfstate` file about changes and embed them in your terraform manifests (example: c4-ec2-instance.tf) and proceed with flow (referesh, plan, review execution plan and apply)

### Step-04-05: I picked choice-2, so i will update the tags in c4-ec2-instance.tf
- Update in c4-ec2-instance.tf
```t
  tags = {
    "Name" = "amz-linux-vm"
    "demotag" = "refreshtest"
  }
```
### Step-04-06: Execute the commands to make our manual change official in terraform manifests and tfstate files perspective  
```t
# Terraform Refresh
terraform refresh

# Terraform Plan
terraform plan

# Terraform Apply
terraform apply -auto-approve
```


