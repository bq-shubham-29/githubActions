resource "aws_subnet" "pub_sub" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block,var.pub_cidrsubnet_newbits,var.pub_cidrsubnet_netnum)
  availability_zone = var.AZ_pub

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "pvt_sub" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block,var.pvt_cidrsubnet_newbits,var.pvt_cidrsubnet_netnum)
  availability_zone = var.AZ_pvt

  tags = {
    Name = "private_subnet"
  }
}