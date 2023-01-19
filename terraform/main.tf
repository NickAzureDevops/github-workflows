resource "aws_instance" "app_server" {
  ami           = "ami-084e8c05825742534"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

