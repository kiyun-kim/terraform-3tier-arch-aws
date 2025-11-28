resource "aws_db_parameter_group" "bamboo" {
  name   = "${var.project_name}-${var.environment}-pg"
  family = "mysql5.7"

  parameter {
    name  = "character_set_server"
    value = "utf8"
  }

  parameter {
    name  = "character_set_client"
    value = "utf8"
  }
}

#DB subnet group
resource "aws_db_subnet_group" "bamboo" {
  name       = "bamboo-subnet-group"
  subnet_ids = [aws_subnet.rds2a.id, aws_subnet.rds2c.id]
}

resource "aws_db_instance" "bamboo" {
  identifier             = "bamboo"
  allocated_storage      = 10
  db_name                = "bamboo_db"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t3.medium"
  username               = "admin"
  password               = var.db_password
  parameter_group_name   = aws_db_parameter_group.bamboo.name
  skip_final_snapshot    = true
  publicly_accessible    = true
  vpc_security_group_ids = [aws_security_group.private_rds.id]
  db_subnet_group_name   = aws_db_subnet_group.bamboo.name
}