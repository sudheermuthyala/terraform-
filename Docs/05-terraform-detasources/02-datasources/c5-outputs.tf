output "ec2_instancnce_public-ip" {
  description = ""
  value = aws_instance.MY_ec2_VM.id
}