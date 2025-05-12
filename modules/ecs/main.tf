# ECS Cluster
resource "aws_ecs_cluster" "this" {
  name = "ecs-cluster"
}

# ECR Repository
resource "aws_ecr_repository" "this" {
  name = "ecs-app-repository"
}

# IAM Role for ECS Task Execution (for accessing ECR, CloudWatch, etc.)
resource "aws_iam_role" "ecs_task_execution_role" {
  name = "ecs-task-execution-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        }
      }
    ]
  })
}

# Attach the Amazon ECS Task Execution Policy to the ECS Task Execution Role
resource "aws_iam_role_policy_attachment" "ecs_task_execution_role_policy_attachment" {
  role       = aws_iam_role.ecs_task_execution_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}
