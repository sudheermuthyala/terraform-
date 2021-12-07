output "ec2_instancnce_public-ip" {
  description = "ec3"
  value = aws_instance.MY_ec2_VM.id
}