terraform {
  required_version = "~> 1.0.0"
  required_providers {
    aws ={
        source = "value"
        version = "~> 3.0"
    }
  }

}