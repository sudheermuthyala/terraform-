variable "MAP-EX" {
  default = {
    Name    = "sudheer"
    Cource  =  "DevOps"
    Fee     =   1000
    boolen  =   true
  }
}



output "MAP-EX-0" {
  value = var.MAP-EX["Name"]
}
output "MAP-EX-1" {
  value = var.MAP-EX["Cource"]
}
output "MAP-EX-2" {
  value = var.MAP-EX["Fee"]
}
output "MAP-EX-3" {
  value = var.MAP-EX["boolen"]
}
