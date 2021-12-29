## Tainting Resources in a Module
- The `taint command` can be used to taint specific resources within a module
- **Very Important Note** It is not possible to taint an entaire module.instead, each resource withinthe module must be tainted seperately


```t
# List Resources from State
terraform state list

# Taint a Resource
terraform taint <RESOURCE-NAME>
terraform taint module.ec2_cluster.aws_instance.this[0]

# Terraform Plan
terraform plan
Observation: First VM will be destroyed and re-created

# Terraform Apply
terraform apply -auto-approve
```

Tainting Resources in-aModule