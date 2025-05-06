variable "aws_region" {
  type        = string
  description = "AWS region for all resources"
}

variable "state_bucket_name" {
  type        = string
  description = "Name of existing S3 bucket to store Terraform state"
}

variable "lock_table_name" {
  type        = string
  description = "Name of existing DynamoDB table for state locking"
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


