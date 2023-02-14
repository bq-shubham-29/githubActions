#create vpc
resource "aws_vpc" "vpc" {
  cidr_block = var.cidrBlock
  tags = {
    Name = "vpc-${var.region}"
  }
}
