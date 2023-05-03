terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"
    }
     random = {
      source = "hashicorp/random"
    }
  }

  backend "s3" {
  }
}

provider "aws" {
}

provider "random" {
}