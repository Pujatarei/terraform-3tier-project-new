provider "aws" {
  region = "ap-south-1"
}
terraform {
  backend "s3" {
    bucket         = "puja-tfstate-bucket"
    key            = "3tier/prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "dynamodb-terraform-state-lock"
    encrypt        = true
  }
}
