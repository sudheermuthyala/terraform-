## Create multiple provisioners of various types
- Creation-Time provisioners
- Destroy-Time provisioners 
**Creation-Time Provisioners** (Is default. there is no logic for this if we define the provisioner i Automatically it executed by duration the creation time)
- By default, provisioners run when the resource they are defined within is created 
- creation time provissioner are only run during creation, not during Update or any lifecycle.
- They are ment as a means to perform bootstraping of system 
- If a creation provisioners faile, the resource is marked as `taint`
- Atainted resource is planed for destruction and recreation upon the next terraform apply 
- Terraform does this because a failed provisioner can leave a resource in a semi-configure state
- Because Terraform cannot reasion about what the provisioner does the only way to ensure proper cretion of resource is to recreate it this is tainting.
- you can chaige this behavior by setting the on_failure attribute, 
**Destroy-Time Provisioner** 
- Destroy-time Provisioners trigger during Destroy Resource
- If you want implement and specifically say that a specific provisioner execute during the destroy time you nee to provide `when = destroy` 


