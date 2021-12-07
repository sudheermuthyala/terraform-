variable "aws_region" {
  description = "Reagion in which aws Resource to be create"
  type = string
  default = "us-east-1"
}

variable "db_username" {
  description = "DB username"
  type = string
  sensitive = true
}

variable "db_password" {
  description = "DB password"
  type = string
  se
}