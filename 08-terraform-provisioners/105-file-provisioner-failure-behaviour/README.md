## Failure Behaviour: Understand Decission making when provisioner fails (Continue/Fail)
- By default, provisioner that fail will also cause the Terraform apply itself to fail. The on failure settings can be used to chainge this behavior. allowed values are 
    - **Continue:** Ignore the error and continue the creation or Destraction 
    - **Faile:** (Default Behaviour) Raise an error and stop applying(Default Behaviour) if this is a creation provisioner this will taint the  resource.
- Try 