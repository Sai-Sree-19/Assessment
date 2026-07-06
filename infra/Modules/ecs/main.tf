resource "aws_ecs_cluster" "cluster" {

  name = "assessment-ecs-cluster"

  tags = {
    Name = "assessment-ecs-cluster"
  }
}

resource "aws_security_group" "ecs_sg" {

  name        = "ecs-security-group"
  description = "Security Group for ECS"

  vpc_id = var.vpc_id

  ingress {

    from_port = 80
    to_port   = 80
    protocol  = "tcp"

    security_groups = [
      var.alb_security_group_id
    ]
  }

  egress {

    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ecs-security-group"
  }
}