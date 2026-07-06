resource "aws_security_group" "rds_sg" {

  name        = "assessment-rds-security-group"
  description = "Security Group for RDS"

  vpc_id = var.vpc_id

  ingress {

    from_port = 5432

    to_port = 5432

    protocol = "tcp"

    security_groups = [
      var.ecs_security_group_id
    ]

  }

  egress {

    from_port = 0

    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "assessment-rds-security-group"
  }

}

resource "aws_db_subnet_group" "db_subnet_group" {

  name = "assessment-db-subnet-group"

  subnet_ids = [
    var.private_subnet_1_id,
    var.private_subnet_2_id
  ]

  tags = {
    Name = "assessment-db-subnet-group"
  }
}

resource "aws_db_instance" "postgres" {

  identifier = "assessment-postgres"

  engine = "postgres"

  engine_version = "15"

  instance_class = "db.t3.micro"

  allocated_storage = 20

  db_name = "assessmentdb"

  username = "postgres"

  password = "Password@123"

  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name

  vpc_security_group_ids = [
    aws_security_group.rds_sg.id
  ]

  publicly_accessible = false

  skip_final_snapshot = true

  multi_az = false
}