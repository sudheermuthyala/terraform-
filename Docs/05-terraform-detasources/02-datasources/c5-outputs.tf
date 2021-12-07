output "ec2_instancnce_public-ip" {
  description = "ec2 instance ip"
  value = aws_instance.MY_ec2_VM.id
}

output "ec2_instance_private_ip" {
  description = "ec2 instance_private"
}