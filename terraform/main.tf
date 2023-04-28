resource "aws_instance" "app_server1" {
  ami           = "ami-084e8c05825742534"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

#Create Ac2 instance
resource "aws_instance" "app_server" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = var.instance_type

  tags = local.default_tags

}

#Create VPC in staging

resource "aws_vpc" "staging-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = local.default_tags

}

#Create subnet

resource "aws_subnet" "subnet-1" {
  vpc_id            = aws_vpc.staging-vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"


  tags = local.default_tags

}


