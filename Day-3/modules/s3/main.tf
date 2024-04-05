resource "aws_s3_bucket" "kash_test" {
  bucket = var.bucket_name

  tags = {
    Name        = "kash bucket"
    Environment = "dev"
  }
}