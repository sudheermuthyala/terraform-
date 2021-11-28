# resource ec2 indtance 

resource "aws_instance" "MY_ec2_vM" {
    ami = "ami-0d718c3d715cec4a7"
    key_name = "terraform"
    instance_type = "t2.micro"
    subnet_id = 
  
}