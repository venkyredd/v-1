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

output "shared_sg_id" {
  description = "Shared security group ID for ALB and ECS"
  value       = module.security_group.shared_sg_id
}

output "alb_dns_name" {
  value       = module.alb.alb_dns_name
  description = "Public DNS of the ALB"
}

output "alb_target_group_arn" {
  value       = module.alb.target_group_arn
  description = "Target group ARN for ECS service"
}

output "ecs_cluster_id" {
  value       = module.ecs.ecs_cluster_id
  description = "The ECS cluster ID"
}

output "ecr_repository_url" {
  value       = module.ecs.ecr_repository_url
  description = "The URL of the ECR repository"
}

output "ecs_task_execution_role_arn" {
  value       = module.ecs.ecs_task_execution_role_arn
  description = "The ARN of the ECS task execution role"
}

output "ecs_service_name" {
  value = module.ecs_service.ecs_service_name
}

output "task_definition_arn" {
  value = module.ecs_service.task_definition_arn
}
