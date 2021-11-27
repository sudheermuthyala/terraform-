# resource aws_ec2_instance 
resource "aws_instance" "MY_DEV_VM" {
    ami = "ami-0855cab4944392d0a"
    instance_type = "t2.micro"
    key_name = "terraform_k"
    subnet_id = aws_subnet.DEV_SUBNET.id
    vpc_security_group_ids = [ aws_security_group.DEV_PUB_SG.id ]
    user_data = file(apache-install.sh)
}