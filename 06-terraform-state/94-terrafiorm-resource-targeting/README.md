## Terraform resource targetting -plan,Apply (-target) Option 
## Terraform Resource Targeting - Plan, Apply (-target) Option
- The `-target` option can be used to focus Terraform's attention on only a subset of resources. 
- [Terraform Resource Targeting](https://www.terraform.io/docs/cli/commands/plan.html#resource-targeting)
- This targeting capability is provided for exceptional circumstances, such as recovering from mistakes or working around Terraform limitations.
-  It is not recommended to use `-target` for routine operations, since this can lead to undetected configuration drift and confusion about how the true state of resources relates to configuration.
- Instead of using `-target` as a means to operate on isolated portions of very large configurations, prefer instead to break large configurations into several smaller configurations that can each be independently applied.
```t
# Lets make two changes
Change-1: Add new tag in c3-ec2-instance.tf
    "target" = "Target-Test-1"
Change-2: Add additional inbound rule in "c4-security-group" security group for port 8080
  ingress {
    description = "Allow Port 8080"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
Change-3: Add new EC2 Resource  
# New VM
resource "aws_instance" "my-demo-vm" {
  ami           = data.aws_ami.amzlinux.id 
  instance_type = var.instance_type
  tags = {
    "Name" = "demo-vm1"
  }
}

# List Resources from state
terraform state list

# Terraform plan
terraform plan -target=aws_instance.my-ec2-vm-new
Observation:
0) Message: "Plan: 0 to add, 2 to change, 0 to destroy."
1) It is updating Change-1 because we are targeting that resource "aws_instance.my-ec2-vm-new"
2) It is updating change-2 "vpc-web" because its a dependent resource for "aws_instance.my-ec2-vm-new"
3) It is not touching the new resource which we are creating now. It will be in terraform configuration but not getting provisioned when we are using -target

# Terraform Apply
terraform apply -target=aws_instance.my-ec2-vm-new

```


## what is terraform resource targetting 
- terraform resource targetting (-target) specifically targetting specifivc
