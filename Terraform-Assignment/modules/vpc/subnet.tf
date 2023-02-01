resource "aws_subnet" "publicSubnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.publicSubnetCidr
  availability_zone = var.publicAz
  tags = {
    Name = "publicSubnet"
  }
}
resource "aws_subnet" "privateSubnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.privateSubnetCidr
  availability_zone = var.privateAz
  tags = {
    Name = "privateSubnet"
  }
}
