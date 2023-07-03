terraform {
    required_providers {
      aws = {
        source = "hasshicorp/aws"
        version = "~> 4.0"
      }
    }
}

provider "aws" {
  region = "us-east-1"
}