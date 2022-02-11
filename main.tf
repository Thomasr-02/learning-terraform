terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.1"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
