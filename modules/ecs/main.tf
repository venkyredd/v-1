# Create ECR repo
resource "aws_ecr_repository" "app" {
  name                 = var.app_name
  image_tag_mutability = "MUTABLE"
}

# ECS Cluster
resource "aws_ecs_cluster" "this" {
  name = var.cluster_name
}
