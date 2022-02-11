resource "aws_s3_bucket" "this" {
  bucket = "${random_string.random.result}-${var.bucket-name}"
  acl    = "public-read-write"
  tags   = local.common_tags

  lifecycle_rule {
    enabled = true
    id      = "expire_all_files"

    expiration {
      days = 10
    }
  }
}

resource "aws_s3_bucket_object" "this" {
  bucket = "${aws_s3_bucket.this.bucket}"
  key    = "config/${local.ip_file_path}"
  source = "${local.ip_file_path}"
  etag   = filemd5(local.ip_file_path)
}