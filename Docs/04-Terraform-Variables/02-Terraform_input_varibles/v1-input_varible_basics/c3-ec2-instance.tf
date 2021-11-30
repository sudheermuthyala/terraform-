# terraform aws ec2_instance Resource
resource "aws_instance" "MY_ec2_VM" {
    ami = "ami-04902260ca3d33422"
    instance_type = "t2.micro"
    key_name = "terraform-k"
  
  
}