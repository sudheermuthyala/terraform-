## Create multiple provisioners of various types
- **Creation-Time Provisioners**
- By default, provisioners run when the resource they are defined within is created 
- creation time provissioner are only run during creation, not during Update or any lifecycle.
- They are ment as a means to perform bootstraping of system 
- If a creation provisioners faile, the resource is marked as `taint`
- Atainted resource is planed for destruction and recreation upon the next terraform apply 
- Terraform does this because a failed provisioner can leave a resource in a semi-configure state
- Because Terraform cannot reasion about what the provisioner does the only way ensure

