# aws ec2 instance

resource "aws_instance" "web" {
    ami    = "ami-04902260ca3d33422"
    instance_type = "t2.miceo"
    key_name      =
  
}
