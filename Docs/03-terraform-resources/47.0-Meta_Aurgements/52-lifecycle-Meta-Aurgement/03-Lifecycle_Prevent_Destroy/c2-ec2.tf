# DEMO_ON_WITHOUT_META_AURGEMENT_LIFECYCLE_

resource "aws_instance" "DEMO_ON_WITHOUT_META_AURGEMENT_LIFECYCLE_" {
      
      
      ami               = "ami-04902260ca3d33422"
      availability_zone = "us-east-1a"
      #availability_zone = "us-east-1b"
      instance_type     = "t2.micro"


    tags = {
      "Name" = "web-1"
    }

      /* this is a meta aurgement with a lifecycle of  prevent_destroy
        this will do the. action create the resource befor it destroy 
      */

    lifecycle {     
      prevent_destroy = false  #Default is false
    }

}
