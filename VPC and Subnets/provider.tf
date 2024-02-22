#provider plugin details
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#provider details
provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

