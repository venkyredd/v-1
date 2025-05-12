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

# IAM Role for ECS Tasks
variable "ecs_task_execution_role_arn" {
  description = "The ARN of the ECS task execution role"
  type        = string
}
