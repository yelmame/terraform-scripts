provider "aws" {
  region = "ap-south-1"
}
resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = file("./password.txt")
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}
