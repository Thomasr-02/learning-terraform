resource "aws_s3_bucket" "this" {
  bucket = "${random_string.random.result}-${var.bucket-name}"
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