resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = cidrsubnet(var.cidr1,var.public_cidrsubnet_newbits1,var.public_cidrsubnet_netnum1)
  availability_zone = var.az_public1

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = cidrsubnet(var.cidr1,var.private_cidrsubnet_newbits1,var.private_cidrsubnet_netnum1)
  availability_zone = var.az_private1

  tags = {
    Name = "private_subnet"
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id     = aws_vpc.vpc2.id
  cidr_block = cidrsubnet(var.cidr2,var.public_cidrsubnet_newbits2,var.public_cidrsubnet_netnum2)
  availability_zone = var.az_public2
  provider = aws.Mumbai

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id     = aws_vpc.vpc2.id
  cidr_block = cidrsubnet(var.cidr2,var.private_cidrsubnet_newbits2,var.private_cidrsubnet_netnum2)
  availability_zone = var.az_private2
  provider = aws.Mumbai

  tags = {
    Name = "private_subnet"
  }
}

