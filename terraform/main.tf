resource "aws_instance" "app_server" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

