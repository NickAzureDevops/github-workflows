terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"

    }
  }

  backend "s3" {
  }
}

provider "aws" {
  region = "eu-west-2a"
}
