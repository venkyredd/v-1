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

