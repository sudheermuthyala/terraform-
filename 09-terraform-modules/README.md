## Terraform Modules
- A module is a collection of *.tf files kept together in a directory,
- Modules are main way to package and reuse resource configurations with terraform 
- Every Terraform Configuratuin has At least one module, Know as its `root module`, Which consists of the resources defined in the .tf files in the main working directory 
- A Terraform module(usually the root module of a configuration) can call other module to include their resources into the configuration.
- A Module that has been called by another
