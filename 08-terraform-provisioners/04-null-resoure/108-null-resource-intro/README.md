## Terraform Null Resource
## Introduction
- Reference-[Null provider](https://registry.terraform.io/providers/hashicorp/null/latest/docs)
    - Null Provider is a **rather-unusual provider that has constructs that intentionally do Nothing**
    - But in terraform in for few specfic usecases ther will be a need for `null_resources`
    so for that purpose using the `null_resource` you need to add the **Null-Provide**

    - If you add the **null_provider** in `version.tf` then you can start using the **null-resources**
- Reference-[Null Resource or Provisioners Without a Resource](https://www.terraform.io/language/resources/provisioners/null_resource)
    - If you need to run provisioners that aren't directly associated with a specific resource, you can associate them with a `null_resource`

- Reference-[Time provider](https://registry.terraform.io/providers/hashicorp/time/latest/docs)
    - Time provider is used to intracted with time-based resources the provider itself has no configuration options,


## Usecase:
- Force a resource to update based on a changed null_resource
- Create `time_sleep` resource to wait for 90 seconds After EC2 instance crreation 
- create Null Resource with required ptovisioners [Null Resource with required ptovisioners](https://github.com/sudheermuthyala/terraform-/blob/main/08-terraform-provisioners/04-null-resoure/108-null-resource-intro/c3-ec2-instance.tf)
    - **File provisioner:** copy Application/cart-app Folder to /tmp
    - **Remote_exec Provisioner:**  Copy Cart-app folder from /tmp to /var/www/html
## Over the process we will learn about
- null_resource
- time_sleep resource
- we will also learn how to force the resource to update based on a changed null_ressource using `timestamp function` and `triggers `in `null resource`
- Hear we are 


