provider "aws" {
  profile = "aws_credential"
}
provider "aws" {
  alias  = "Tokyo"
  region = "ap-northeast-1"
}
provider "aws" {
  alias  = "Mumbai"
  region = "ap-south-1"
}
