## Failure Behaviour: Understand Decission making when provisioner fails (Continue/Fail)
- By default, provisioner that fail will also cause the Terraform apply itself to fail. The on failure settings can be used to chainge this behavior. allowed values are 
    - **Continue:** Ignore the error and continue the creation or Destraction 
    - **Faile:** (Default Behaviour) Raise an error and stop applying(Default Behaviour) if this is a creation provisioner this will taint the  resource.
- Try copying a file to Apache static content  folder "/var/www/html" using file provisioner
- This will fail,because the user you are usinng `ec2-user` for Amazon linux vm. This user don't have access to "/var/www/html" to copey the files 
- we need to use sudo to do this 
- we all know is we cannot copy it directly, but we know we have already copyed this file in "/tmp" using file-provisioner
- Try two scenarios
    - No `on_failure` attribute (same as `on_failure = fail`)- Default what happens it will Raise an error and stop applying. if this is a creation provisioner,it will taint the resource.
        ```t
        # In this Block we don't have `on_failure` attribute

        provisioner "file" {
        source      = "apps/file-copy.html"
        destination = "/var/www/html/file-copy.html"
        }
        ```
    - When `on_failure = continue` will continue creating resources 
        ```t
        provisioner "file" {
    source      = "apps/file-copy.html"
    destination = "/var/www/html/file-copy.html"
    on_failure  = continue 
   }
        ```

    - **Verify:** verify `terraform.tfstate` for `status:` `tainted`

