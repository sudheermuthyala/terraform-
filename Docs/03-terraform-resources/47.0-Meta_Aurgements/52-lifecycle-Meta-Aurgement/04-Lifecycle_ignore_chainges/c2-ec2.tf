# DEMO_ON_WITHOUT_META_AURGEMENT_LIFECYCLE_

resource "aws_instance" "DEMO_ON_META_AURGEMENT_LIFECYCLE_ignore_chainges" {
      
      
      ami               = "ami-04902260ca3d33422"
      availability_zone = "us-east-1a"
      #availability_zone = "us-east-1b"
      instance_type     = "t2.micro"


    tags = {
      "Name" = "prevent_destroy"
    }

      /* this is a meta aurgement with a lifecycle of  ignore_changes
        this will do the. action like  it will ignore the chainges whic was happen manually in the 
        management console 
      */

    lifecycle {     
      ignore_changes = [
        tags,
      ]
    }

}
