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

variable "target_group_arn" {
  description = "Target Group ARN"
  type        = string
}

variable "alb_security_group_id" {
  description = "ALB Security Group ID"
  type        = string
}