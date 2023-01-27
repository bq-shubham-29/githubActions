provider "aws" {
     profile = "key"  
}

provider "aws" {
   alias = "singapore"
   region = "ap-northeast-1"
}

provider "aws" {
   alias = "mumbai"
   region = "ap-south-1"
}
     