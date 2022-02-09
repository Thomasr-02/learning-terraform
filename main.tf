terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.1"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my-bucket-tf" {
  bucket = "my-bucket-tf-aws-2"
  acl    = "public-read-write"
  tags   = var.bucket_tags
  
  lifecycle_rule {
    enabled  = true
    id     = "expire_all_files"

    expiration {
        days = 10
      }
  }
}