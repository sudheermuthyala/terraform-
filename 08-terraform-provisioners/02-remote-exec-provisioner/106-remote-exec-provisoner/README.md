## Terraform remote-exec Provisioner
# Introduction
- Understand about remote-exec Provisioner
- The remote-exec provisioner invokes a script on a remote resource after it created.
- this can be used to run a configuration management tool, bootstrap into a cluster, etc

## Create/Review Provisioner configuration
**Usecase**
- we will copey a file name `application.htm` using the file provisoner to "/tmp" Directory
- Using `remote-exec provisioner`, using linux commands we will in-turn copey the file to Apache Webserver static content Directory `/val/www/html` and access it via brouser once it is provisened 

```t

provisioner "file" {
    source =  "Applications/application.html"
    destination = "/var/www/html/application.html" 
   }

```