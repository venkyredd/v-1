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

module "ecs" {
  source          = "./modules/ecs"
  cluster_name    = "${var.app_name}-cluster"
}
