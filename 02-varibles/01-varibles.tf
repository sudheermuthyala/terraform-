variable "VAR-1" {
  default = "Hello WOrld(from VAR-1)"
}

output "Printing_output_for_VAR-1" {
  value = var.VAR-1
}



variable "VARIBLE-2" {
  default =  "This is a Second varible from VARIBLE-2"
}

output "Printing_output_for_VARIBLE-2" {
  value = "${var.VARIBLE-2} ----> This varible is comming from VARIBLE-2"
}


# ->  The Varibles with out any combination can be accessed as var.var-name
#     EX:-   var.VAR-1
# ->  But The varible with combination of a string We Need to use "${var.var-name} some string" should be in Double Quotes
#     EX:-    "${var.VARIBLE-2} ----> some string"




