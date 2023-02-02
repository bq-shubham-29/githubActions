provider "aws" {
  profile = "aws_credential"
}

provider "aws" {
  alias  = "requester"
  region = var.requesterRegion
}

provider "aws" {
  alias  = "accepter"
  region = var.accepterRegion
}
