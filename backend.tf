terraform {
  backend "s3" {
    bucket         = v-backend-s3
    key            = "infra/terraform.tfstate"
    region         = var.aws_region
    encrypt        = true
  }
}
