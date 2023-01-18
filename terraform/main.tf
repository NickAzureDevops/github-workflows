resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

