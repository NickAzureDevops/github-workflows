resource "aws_s3_bucket" "bucket" {
  bucket = "test"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}