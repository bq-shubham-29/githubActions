resource "aws_vpc" "vpc1" {
  cidr_block       = var.cidr1
  tags = {
    Name = var.name_tag1
  }
}

resource "aws_vpc" "vpc2" {
  cidr_block       = var.cidr2
  provider = aws.Mumbai
  tags = {
    Name = var.name_tag2
  }
}

