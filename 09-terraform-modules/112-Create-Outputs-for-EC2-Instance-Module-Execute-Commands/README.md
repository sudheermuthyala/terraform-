## Define Outputs from a EC2 Instance Module
c5-outputs.tf: We will output the EC2 Instance Module attributes (Public DNS and Public IP)
# Output variable definitions
```t
output "ec2_instance_public_ip" {
  description = "Public IP addresses of EC2 instances"
  value       = module.ec2_cluster.*.public_ip
}

output "ec2_instance_public_dns" {
  description = "Public IP addresses of EC2 instances"
  value       = module.ec2_cluster.*.public_dns
}
```