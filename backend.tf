terraform {
  backend "s3" {
    bucket         = v-backend-s3
    key            = "infra/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = v-backend-db
    encrypt        = true
  }
}
