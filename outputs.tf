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

