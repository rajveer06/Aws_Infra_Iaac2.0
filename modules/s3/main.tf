resource "aws_s3_bucket" "tf_state" {
  bucket        = var.bucket_name
  force_destroy = true # Allows deletion of non-empty buckets
  }
