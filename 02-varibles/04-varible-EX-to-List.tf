variable "LIST" {
  default   = ["sudheer",1000,true,"Naidus"]
}

# or

variable "LIST2" {
  default   = ["sudheer",
    1000,
    true,
    "Naidus"]
}

output "LIST-0" {
  value = var.LIST[0]
}

output "LIST-1" {
  value = var.LIST[1]
}

output "LIST-2" {
  value = var.LIST[2]
}

output "LIST-3" {
  value = var.LIST[2]
}

