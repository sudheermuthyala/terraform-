output "ec2_instancnce_public-ip" {
  description = "ec2_"
  value = aws_instance.MY_ec2_VM.id
}