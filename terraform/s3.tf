resource "aws_s3_bucket" "test" {
  bucket = "my-test-bucket001"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}