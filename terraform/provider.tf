terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"

    }
  }

  backend "s3" {
    region = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-west-2"
}
