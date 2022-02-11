variable "bucket_tags" {
  type = map(string)
  default = {
    Name        = "My bucket for Terraform"
    Environment = "Dev"
    Managedby   = "Terraform"
    Owner       = "Thomas R"
    UpdateAt    = "02-09-2022"
  }
  description = "Map of tags to apply to the bucket"
}

variable bucket-name {
  type        = string
  default     = "tf-test-bucket"
  description = "Bucket name"
}


variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region to create the bucket in"
}
