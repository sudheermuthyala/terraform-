# resource aws_ec2_instance 
resource "aws_instance" "MY_DEV_VM" {
    ami = "ami-0855cab4944392d0a"
    instance_type = "t2.micro"
    key_name = ""
  
}