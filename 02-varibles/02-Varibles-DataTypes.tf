#Varible - Data Types

# Terraform supports data types And those are
#   ->  String        NOTE:   String Data should be in Double Quotes
#   ->  Number        NOTE:   But Numbers and Boolean need not to be in Quoted
#   ->  Booleans      NOTE:   But Numbers and Boolean need not to be in Quoted


# String  Data Types
# EX:-
variable "sample-1" {
  default = "HelLoWorld"
}

output "string-out-sample-1" {
  value = var.sample-1
}

# Number data type
#EX:
variable "sample-2" {
  default = 100
}

output "Number-out-sample-2" {
  value = var.sample-2
}

# Boolean Data Type
# EX:

variable "sample-3" {
  default = true
}

output "Boolean-out-sample-3" {
  value = var.sample-3
}

