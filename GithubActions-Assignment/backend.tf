#add backend for tfstate on aws s3 bucket 
terraform {
  backend "s3" {
    bucket = "terraform-assignment-bucket"
    region = "ap-northeast-1"
    key    = "terraform.tfstate"
  }
}
