variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "private_subnet_1_id" {
  description = "Private Subnet 1 ID"
  type        = string
}

variable "private_subnet_2_id" {
  description = "Private Subnet 2 ID"
  type        = string
}

variable "ecs_security_group_id" {
  description = "ECS Security Group ID"
  type        = string
}