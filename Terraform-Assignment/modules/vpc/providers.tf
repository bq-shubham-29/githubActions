terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.51.0"
    }
  }
}
provider "aws" {
  alias   = "Tokyo"
  region  = "ap-northeast-1"
  profile = "aws_credential"
}
provider "aws" {
  alias   = "Mumbai"
  region  = "ap-south-1"
  profile = "aws_credential"
}
    