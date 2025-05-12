variable "aws_region" {
  type        = string
  description = "AWS region for all resources"
}

variable "state_bucket_name" {
  type        = string
  description = "Name of existing S3 bucket to store Terraform state"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnet CIDRs in two AZs"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "my-ecs-cluster"
}

variable "repository_name" {
  description = "The name of the ECR repository"
  type        = string
  default     = "my-ecr-repo"
}

variable "ecs_task_execution_role_name" {
  description = "The name of the ECS task execution role"
  type        = string
  default     = "ecs-task-execution-role"
}
