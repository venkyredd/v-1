module "network" {
  source         = "../modules/network"
  aws_region     = var.aws_region
  vpc_cidr       = var.vpc_cidr
  public_subnets = var.public_subnets
}

module "security_group" {
  source = "../modules/security_group"
  vpc_id = module.network.vpc_id
}

module "alb" {
  source            = "../modules/alb"
  vpc_id            = module.network.vpc_id
  public_subnet_ids = module.network.public_subnet_ids
  shared_sg_id      = module.security_group.shared_sg_id
}

module "ecs" {
  source          = "../modules/ecs"
  cluster_name    = var.cluster_name
  repository_name = var.repository_name
}

module "ecs_service" {
  source             = "../modules/ecs-service"
  task_family        = "my-app"
  execution_role_arn = module.ecs.execution_role_arn
  cpu                = "256"
  memory             = "512"
  container_name     = "my-container"
  container_port     = 80
  ecr_repo_url       = module.ecs.ecr_repo_url
  image_tag          = var.image_tag
  ecs_cluster_id     = module.ecs.cluster_id
  private_subnets    = module.network.private_subnet_ids
  shared_sg_id       = module.security_group.shared_sg_id
  target_group_arn   = module.alb.target_group_arn
  service_name       = "my-app-service"
  desired_count      = 1
}
