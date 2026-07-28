terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "81s-remote-state-s3-prod"
    key    = "roboshop-sg"
    region = "us-east-1"
    dynamodb_table = "81s-locking-prod-new"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}