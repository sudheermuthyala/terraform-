## Terraform Modules
- A module is a collection of *.tf files kept together in a directory,
- Modules are main way to package and reuse resource configurations with terraform 
- Every Terraform Configuratuin has At least one module, Know as its `root module`, Which consists of the resources defined in the .tf files in the main working directory 
- A Terraform module(usually the root module of a configuration) can call other module to include their resources into the configuration.
- A module that has called by another Module is often referd to as a `chaild module0` (What ever you are calling form root Module That respective Module is called child module)
- chaild module can be called multiple times within the sampe configuration, and mulfiple configurations can used the same child module
- In addition to Modules from local filesystem, Terraform can lode Modules from publice and private registry
This make it Possible to Publish modules for others to user,and to use modules that others have published.

### Terraform Registry
