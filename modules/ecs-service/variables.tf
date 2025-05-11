variable "task_family" {
  type        = string
  description = "ECS Task Definition family name"
}

variable "execution_role_arn" {
  type        = string
  description = "IAM role ARN used by ECS for pulling images and sending logs"
}

variable "cpu" {
  type        = string
  default     = "256"
}

variable "memory" {
  type        = string
  default     = "512"
}

variable "container_name" {
  type        = string
  description = "Container name used inside task definition"
}

variable "container_port" {
  type        = number
  description = "Port the container listens on"
}

variable "ecr_repo_url" {
  type        = string
  description = "ECR repository URL without tag"
}

variable "image_tag" {
  type        = string
  description = "Docker image tag"
}

variable "ecs_cluster_id" {
  type        = string
  description = "ECS Cluster ARN or name"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnet IDs"
}

variable "shared_sg_id" {
  type        = string
  description = "Shared SG for ALB and ECS"
}

variable "target_group_arn" {
  type        = string
  description = "Target group ARN for ALB"
}

variable "service_name" {
  type        = string
  description = "ECS service name"
}

variable "desired_count" {
  type        = number
  default     = 1
}
