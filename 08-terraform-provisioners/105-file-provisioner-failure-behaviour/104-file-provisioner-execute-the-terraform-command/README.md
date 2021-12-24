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
- `Destroy-time Provisioners` trigger during Destroy Resource
- If you want implement and specifically say that a specific provisioner execute during the `Destroy-time` you nee to provide `when = destroy`, when this is not provided,then every provisioner what ever we running that will be executed during the `Creation-Time` of the resource




## Create multiple provisioners of various types
- **Creation-Time Provisioners:** 
- By default, provisioners run when the resource they are defined within is created. 
- Creation-time provisioners are only run during creation, not during updating or any other lifecycle. 
- They are meant as a means to perform bootstrapping of a system.
- If a creation-time provisioner fails, the resource is marked as tainted. 
- A tainted resource will be planned for destruction and recreation upon the next terraform apply.
- Terraform does this because a failed provisioner can leave a resource in a semi-configured state. 
- Because Terraform cannot reason about what the provisioner does, the only way to ensure proper creation of a resource is to recreate it. This is tainting.
- You can change this behavior by setting the on_failure attribute, which is covered in detail below.

```t

 # Copies the file-copy.html file to /tmp/file-copy.html
  provisioner "file" {
    source      = "apps/file-copy.html"
    destination = "/tmp/file-copy.html"
  }

  # Copies the string in content into /tmp/file.log
  provisioner "file" {
    content     = "ami used: ${self.ami}" # Understand what is "self"
    destination = "/tmp/file.log"
  }

  # Copies the app1 folder to /tmp - FOLDER COPY
  provisioner "file" {
    source      = "apps/app1"
    destination = "/tmp"
  }

  # Copies all files and folders in apps/app2 to /tmp - CONTENTS of FOLDER WILL BE COPIED
  provisioner "file" {
    source      = "apps/app2/" # when "/" at the end is added - CONTENTS of FOLDER WILL BE COPIED
    destination = "/tmp"
  }
 # Copies the file-copy.html file to /tmp/file-copy.html
  provisioner "file" {
    source      = "apps/file-copy.html"
    destination = "/tmp/file-copy.html"
  }

  # Copies the string in content into /tmp/file.log
  provisioner "file" {
    content     = "ami used: ${self.ami}" # Understand what is "self"
    destination = "/tmp/file.log"
  }

  # Copies the app1 folder to /tmp - FOLDER COPY
  provisioner "file" {
    source      = "apps/app1"
    destination = "/tmp"
  }

  # Copies all files and folders in apps/app2 to /tmp - CONTENTS of FOLDER WILL BE COPIED
  provisioner "file" {
    source      = "apps/app2/" # when "/" at the end is added - CONTENTS of FOLDER WILL BE COPIED
    destination = "/tmp"
  }
```

## Step-04: Create Resources using Terraform commands

```t
# Terraform Initialize
terraform init

# Terraform Validate
terraform validate

# Terraform Format
terraform fmt

# Terraform Plan
terraform plan

# Terraform Apply
terraform apply -auto-approve

# Verify - Login to EC2 Instance
chmod 400 private-key/terraform-key.pem 
ssh -i private-key/terraform-key.pem ec2-user@IP_ADDRESSS_OF_YOUR_VM
ssh -i private-key/terraform-key.pem ec2-user@54.197.54.126
Verify /tmp for all files copied
cd /tmp
ls -lrta /tmp

# Clean-up
terraform destroy -auto-approve
rm -rf terraform.tfsate*
```


