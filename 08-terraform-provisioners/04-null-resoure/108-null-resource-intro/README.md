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


## Usecase: Force a resource to wait for 90 seconds
