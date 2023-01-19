terraform {
  backend "s3" {
    bucket = "tfstate-nick"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}