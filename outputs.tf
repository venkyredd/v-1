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
