output "EC2_Instance_Public_ip" {
    description = "EC2_Instance_Public_ip"
    value = module.ec2_instance.*.public_ip
}

output "EC2_Instance_Private_ip" {
    description = "EC2_Instance_Private_ip"
    value = module.ec2_instance.*.private_ip
}

output "name" {
    value = ""
}