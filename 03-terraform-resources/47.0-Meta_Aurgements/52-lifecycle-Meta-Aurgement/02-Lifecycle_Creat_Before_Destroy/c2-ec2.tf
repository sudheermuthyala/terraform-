# DEMO_ON_WITHOUT_META_AURGEMENT_LIFECYCLE_

resource "aws_instance" "DEMO_ON_META_AURGEMENT_LIFECYCLE_create_before_destroy" {
      
      count = 2
      ami               = "ami-04902260ca3d33422"
      availability_zone = "us-east-1a"
      #availability_zone = "us-east-1b"
      instance_type     = "t2.micro"


    tags = {
      "Name" = "create_before_destroy"
    }

      /* this is a meta aurgement with a lifecycle of create_before_destroy 
        this will do the. action create the resource befor it destroy 
      */
    lifecycle {     
      create_before_destroy = true 
      
    }

}
