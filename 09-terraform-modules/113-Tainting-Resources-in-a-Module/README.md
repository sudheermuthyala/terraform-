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

```t
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # module.ec2_instance[1].aws_instance.this[0] is tainted, so must be replaced
-/+ resource "aws_instance" "this" {
      ~ arn                                  = "arn:aws:ec2:us-east-1:164510969051:instance/i-044f0c9c5c5dda18a" -> (known after apply)
      ~ associate_public_ip_address          = true -> (known after apply)
      ~ availability_zone                    = "us-east-1b" -> (known after apply)
      ~ cpu_core_count                       = 1 -> (known after apply)
      ~ cpu_threads_per_core                 = 1 -> (known after apply)
      ~ disable_api_termination              = false -> (known after apply)
      ~ ebs_optimized                        = false -> (known after apply)
      - hibernation                          = false -> null
      + host_id                              = (known after apply)
      ~ id                                   = "i-044f0c9c5c5dda18a" -> (known after apply)
      ~ instance_initiated_shutdown_behavior = "stop" -> (known after apply)
      ~ instance_state                       = "running" -> (known after apply)
      ~ ipv6_address_count                   = 0 -> (known after apply)
      ~ ipv6_addresses                       = [] -> (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      ~ primary_network_interface_id         = "eni-01bd262ffc3f1016a" -> (known after apply)
      ~ private_dns                          = "ip-172-31-27-160.ec2.internal" -> (known after apply)
      ~ private_ip                        
```