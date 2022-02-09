terraform {

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.74.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-bucket-tf" {
  bucket = "my-bucket-tf-aws"
  acl    = "public-read-write"

  tags = {
    Name        = "My bucket for Terraform"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}