output "ec2_instancnce_public-ip" {
  description = "ec2_instance_ip"
  value = aws_instance.MY_ec2_VM.public_ip
}

output "ec2_instance_private_ip" {
  description = "ec2_instance_private"
  value = aws_instance.MY_ec2_VM.pri
}