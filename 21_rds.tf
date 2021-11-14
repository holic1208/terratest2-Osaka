resource "aws_db_instance" "suuu_rds" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro" #ap-northeast-3에선 db.t2 시리즈 지원x, t3부터 됨!
  name                   = "test"
  identifier             = "test"
  username               = "admin"
  password               = "It12345!"
  parameter_group_name   = "default.mysql8.0"
  availability_zone      = "ap-northeast-3a"
  db_subnet_group_name   = aws_db_subnet_group.suuu_dbsb.id
  vpc_security_group_ids = [aws_security_group.suuu_sg.id]
  skip_final_snapshot    = true
  tags = {
    "Name" = "suuu-rds"
  }
}

resource "aws_db_subnet_group" "suuu_dbsb" {
  name       = "suuu-dbsb"
  subnet_ids = [aws_subnet.suuu_pria_db.id,aws_subnet.suuu_pric_db.id]
  tags = {
    "Name" = "suuu-dbsb-gp"
  }
}