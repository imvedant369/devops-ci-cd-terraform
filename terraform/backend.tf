terraform {
  backend "s3" {
    bucket = "vedant-backend-development"
    key    = "devops-ci-cd-terraform/terraform.tfstate"
    region = "ap-south-1"
  }
}