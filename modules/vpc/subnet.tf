resource "aws_subnet" "pub_sub" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block, 8, 0)
  availability_zone = var.AZ_pub

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "pvt_sub" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block, 8, 1)
  availability_zone = var.AZ_pvt

  tags = {
    Name = "private_subnet"
  }
}