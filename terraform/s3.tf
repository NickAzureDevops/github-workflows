resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-test-bucket001"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}