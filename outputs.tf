# infra/outputs.tf

# Networking
output "vpc_id" {
  description = "The VPC ID"
  value       = module.network.vpc_id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = module.network.public_subnet_ids
}

# Security
output "alb_security_group_id" {
  description = "Security Group ID for the ALB"
  value       = module.security.alb_sg_id
}

output "ecs_security_group_id" {
  description = "Security Group ID for ECS tasks"
  value       = module.security.ecs_sg_id
}

# IAM
output "ecs_execution_role_arn" {
  description = "ARN of the ECS Task Execution Role"
  value       = module.iam.execution_role_arn
}

# Logging
output "log_group_name" {
  description = "CloudWatch Log Group for ECS tasks"
  value       = module.logs.log_group_name
}

# ECR
output "ecr_repository_url" {
  description = "ECR repository URL for the application image"
  value       = module.ecs.repository_url
}

# ECS & ALB (you already have these)
output "ecs_cluster_name" {
  description = "Name of the ECS Cluster"
  value       = module.ecs.cluster_name
}

output "ecs_service_name" {
  description = "Name of the ECS Service"
  value       = module.ecs.service_name
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = module.ecs.alb_dns_name
}
