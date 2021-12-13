## Terraform Execution also do using by.
- Terraform CLI
- Terraform cloud
- Terraform Enterprise

## Terraform Backend 
- Each Terraform Configuration can specify a backend, which defines wher and how operations are performed, wher state snapshots are stored, etc

**Wher this backends are used**
- terraform backend configuration is only used by terraform CLI
- `Terraform cloud` and `terraform Enterprise` always use their own state storage when prompting the run,so they ignore  any backend block in the configuration.
- From Terraform colud users alsp always recomended to use backend block in terraform configuration 
- Some command like `terraform taint` which can executed only using terraform CLI

## What Backend do.
- Ther are two things backends will be used for
    - where state is stored 
    - where operations are performed 
## Terraform backend can see in three dimentional way
- Store State
- State Locking 
- opreations

# Store State
- Terraform uses Persistent state data to keep track of the resources it manages.
- Everyone  
