terraform {
  backend "s3" {
    bucket         = "my-ews-bucket1"
    region         = "us-east-1"
    key            = "3-tier-Production-Grade-DevOps-Project-with-terraform/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}