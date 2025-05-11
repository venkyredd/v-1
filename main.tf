module "network" {
  source         = "./modules/network"
  aws_region     = var.aws_region
  vpc_cidr       = var.vpc_cidr
  public_subnets = var.public_subnets
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.network.vpc_id
}
