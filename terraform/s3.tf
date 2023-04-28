resource "aws_s3_bucket" "bucket" {
  bucket = "testbucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}