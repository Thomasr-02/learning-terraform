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
