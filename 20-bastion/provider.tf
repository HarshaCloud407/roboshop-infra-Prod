terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.56.0" # Terraform AWS provider version
    }
  }

  backend "s3" {
    bucket  = "81s-remote-state-s3-prod" # Replace with your unique bucket name
    key     = "terraform-eks-bastion"
    region  = "us-east-1"
    encrypt = true
    use_lockfile   = true
  }
}

provider "aws" {
  region = "us-east-1"
}