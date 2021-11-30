# DEMO_ON_WITHOUT_META_AURGEMENT_LIFECYCLE_

resource "aws_instance" "DEMO_ON_WITHOUT_META_AURGEMENT_LIFECYCLE_" {
      
      count = 
      ami               = "ami-04902260ca3d33422"
      availability_zone = "us-east-1a"
      #availability_zone = "us-east-1a"
      instance_type     = "t2.micro"

}
