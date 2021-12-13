## Terraform Execution also do using by.
- Terraform CLI
- Terraform cloud
- Terraform Enterprise

## Terraform Backend 

- Each Terraform Configuration can specify a backend, which defines wher and how operations are performed, wher state snapshots are stored, etc

**Wher this backends are used**
- terraform backend configuration is only used by terraform CLI
- Terraform cloud and terraform Enterprise always use their own state storage when prompting the run,so 
