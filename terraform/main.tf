resource "aws_instance" "app_server" {
  ami           = "ami-084e8c05825742534"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = format("test-bucket-%s", var.location)

  tags = {
    Name        = "test"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "s3_bucket1" {
  bucket = format("test2-bucket2-%s", var.location)

  tags = {
    Name        = "test"
    Environment = "Dev"
  }
}