## Terraform Modules
- A module is a collection of *.tf files kept together in a directory,
- Modules are main way to package and reuse resource configurations with terraform 
- Every Terraform Configuratuin has At least one module, Know as its `root module`, Which consists of the resources defined in the .tf files in the main working directory 
- A Terraform module(usually the root module of a configuration) can call other module to include their resources into the configuration.
- A module that has called by another Module is often referd to as a `chaild module0` (What ever you are calling form root Module That respective Module is called child module)
- chaild module can be called multiple times within the sampe configuration, and mulfiple configurations can used the same child module
- In addition to Modules from local filesystem, Terraform can lode Modules from publice and private registry
This make it Possible to Publish modules for others to user,and to use modules that others have published.

### Terraform Registry - Publicly Available Modules
- The Terraform Registry hosts a broad collection of publically avillable terraform modules for configuring many kinds of infrastructure.
- These modules are free to use,and Terraform can downloade them Automatically if you specify the appropriate source and version in module call block,

- For every module will have it owne source form there it need to downloade

## Private Module Registry in Terraform cloud & Enterprise
- This is for our originisation related private modules which we can create and publish in our respective respective cloud directories
- Member of your Organization might produce modules Specifically Crafted for your
