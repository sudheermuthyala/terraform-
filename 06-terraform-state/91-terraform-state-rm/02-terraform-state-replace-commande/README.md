# Step-05-04: Terraform State replace-provider command
- This commands comes under **Terraform Moving Resources**
- [Terraform State Replace Provider](https://www.terraform.io/docs/cli/commands/state/replace-provider.html)


### Step-05-05: Terraform State pull / push command
- This command comes under **Terraform Disaster Recovery Concept**
- **terraform state pull:** 
  - The `terraform state pull` command is used to manually download and output the state from remote state.
  - This command also works with local state.
  - This command will download the state from its current location and output the raw format to stdout.
- **terraform state push:** The `terraform state push` command is used to manually upload a local state file to remote state. 

```t
# Other State Commands (Pull / Push)
terraform state pull
terraform state push
```