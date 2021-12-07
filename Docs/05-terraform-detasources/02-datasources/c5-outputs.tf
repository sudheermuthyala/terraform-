output "ec2_instancnce_public-ip" {
  
  value = aws_instance.MY_ec2_VM.id
}