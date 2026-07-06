module "network" {

  source = "../../modules/network"

  vpc_cidr = "10.0.0.0/16"

  public_subnet_1_cidr = "10.0.1.0/24"

  public_subnet_2_cidr = "10.0.2.0/24"

  private_subnet_1_cidr = "10.0.3.0/24"

  private_subnet_2_cidr = "10.0.4.0/24"

  availability_zone_1 = "ap-south-1a"

  availability_zone_2 = "ap-south-1b"

}

module "alb" {

  source = "../../modules/alb"

  vpc_id = module.network.vpc_id

  public_subnet_1_id = module.network.public_subnet_1_id
  public_subnet_2_id = module.network.public_subnet_2_id
}

module "ecs" {

  source = "../../modules/ecs"

  vpc_id = module.network.vpc_id

  private_subnet_1_id = module.network.private_subnet_1_id
  private_subnet_2_id = module.network.private_subnet_2_id

  target_group_arn = module.alb.target_group_arn

  alb_security_group_id = module.alb.alb_security_group_id
}

module "rds" {

  source = "../../modules/rds"

  vpc_id = module.network.vpc_id

  private_subnet_1_id = module.network.private_subnet_1_id
  private_subnet_2_id = module.network.private_subnet_2_id

  ecs_security_group_id = module.ecs.ecs_security_group_id
}