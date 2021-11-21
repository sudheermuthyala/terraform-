# ->   Terraform supports different Data types in a single list or map varibles
# ->   Need not to be the same  data type

# Default Varible
variable "Default-varile" {
  default = "Helloworld"
}


# list varible type

variable "Sample-List-varible-type" {
  default = [
  "Hello",
   10000,
    true,
    "World"
  ]
}

output "output_list_varible_type" {
  value = var.Sample-List-varible-type[0]
}



variable "Sample-Map-varible-type" {
  default = {
    string  = "Hello world"
    number  = 1000
    boolean = true
  }
}

output "output-Map-varible-type" {
  value = var.Sample-Map-varible-type["number"]
}

