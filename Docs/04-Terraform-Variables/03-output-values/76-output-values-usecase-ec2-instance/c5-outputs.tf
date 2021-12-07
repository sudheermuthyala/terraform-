#Define Output Values

#Attriute Reference: EC2 instance public IP
output "ec2_instance_publicip" {
  description   = "EC2 instance Publice ip"
  value         = ec2_instance.MY_ec2_VM.public_ip
}

#Aurgement Reference: EC2 instance private IP
output "ec2_instance_privateip" {
  description = "Ec2 instance privete ip"
  value = ec2_instance.MY_ec2_VM.private_ip
}

#Aurgement Reference: EC2 instance private IP
output "ec2_instance_securitygroup" {
  description = "ec2_instance_securitygroup"
  value = ec2_instance.MY_ec2_VM.security_groups
}

#Attributes Reference: EC2 instance public dns

output "ec2_instance_publicdns" {
  description = "ec2_instance_publicdns"
}