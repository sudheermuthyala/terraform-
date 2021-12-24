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
# copey the file application.html to "/tmp/application.html"
    provisioner "file" {
    source =  "Applications/application.html"
    destination = "/tmp/application.html" 
   }


# copey the file to Apache webserver  /var/www/html Directory
    provisioner "remote-exec" {
    inline = [
      "sleep 120", # will sleep for 120 secondes to ensure apache webserver is provisioned using user_data
      "sudo cp /tmp/application.html /var/www/html"
    ]

  }


```