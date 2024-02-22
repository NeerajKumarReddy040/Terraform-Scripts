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
  access_key = "AKIAVRUVQ2F3UBF63VPM"
  secret_key = "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"
}

