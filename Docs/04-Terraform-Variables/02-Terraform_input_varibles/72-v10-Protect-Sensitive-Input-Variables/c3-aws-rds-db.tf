resource "aws_db_instance" "myrdsdb" {
    instance_class = "db.t2.micro"
    allocated_storage = 5
    username = var.db_username
    password = var.db_password
    availability_zone = "us-east-1a"
    engine = "mysql"
    name = "myrds"
    skip_final_snapshot = true
  
}

Variable Definition Precedence
