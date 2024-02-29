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

resource "aws_iam_role_policy" "lambda_policy" {
  name = "lambda_policy"
  role = "$(aws_iam_role.test_role.id)"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = "${file("iam/iam/lambda-policy.json")}"
}

resource "aws_iam_role" "lambda_role" {
  name = "lambda_role"

  assume_role_policy = "${file("iam/iam/lambda-assume-policy.json")}"
}