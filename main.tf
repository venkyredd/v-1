module "network" {
  source         = "./modules/network"
  aws_region     = var.aws_region
  vpc_cidr       = var.vpc_cidr
  public_subnets = var.public_subnets
}

module "security" {
  source            = "./modules/security"
  vpc_id            = module.network.vpc_id
  public_subnet_ids = module.network.public_subnet_ids
}

module "iam" {
  source    = "./modules/iam"
  app_name  = var.app_name
}

module "logs" {
  source    = "./modules/logs"
  app_name  = var.app_name
}

module "ecs" {
  source          = "./modules/ecs"
  app_name        = var.app_name
  cluster_name    = "${var.app_name}-cluster"
  vpc_id          = module.network.vpc_id
  subnet_ids      = module.network.public_subnet_ids
  alb_sg_id       = module.security.alb_sg_id
  ecs_sg_id       = module.security.ecs_sg_id
  execution_role  = module.iam.execution_role_arn
  log_group_name  = module.logs.log_group_name
  container_port  = var.container_port
}
