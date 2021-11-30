# terraform aws ec2_instance Resource
resource "aws_instance" "MY_ec2_VM" {
    ami = var.ec2_ami_id
    instance_type = "t2.micro"
    key_name = "terraform-k"
    count = var.ec2_count
    user_data = <<EOF
        
    EOF
  
  
}