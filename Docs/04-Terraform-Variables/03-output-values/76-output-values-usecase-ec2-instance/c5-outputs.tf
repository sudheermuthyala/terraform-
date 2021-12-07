#Define Output Values
#Attriute Reference: EC2 instance public IP

output "ec2_instance_publicip" {
  description   = "EC2 instance Publice ip"
  value         = ec2_instance.MY_ec2_VM.public_ip
}