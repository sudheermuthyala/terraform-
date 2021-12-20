# Terraform Workspace 
- terraform starts with a single workspace named **default**
- This work space is Special both because it is the default,And because it cannot ever be deleted.
- By default we are working in default workspace 
- The advantage of using this Named workspace allow us conveninently switching between  multiple instances of a single configuration within its single backend 
- the comman use for multiple workspace is to create a parallel distinct copy of set of infrastructure in order to test a set of chainges before mod