resource "aws_subnet" "publicSubnetRequesterVpc" {
  vpc_id            = aws_vpc.requesterVpc.id
  cidr_block        = var.publicSubnetCidrRequesterVpc
  availability_zone = var.publicAzRequesterVpc
  provider = aws.Tokyo
  tags = {
    Name = "publicSubnet"
  }
}
resource "aws_subnet" "privateSubnetRequesterVpc" {
  vpc_id            = aws_vpc.requesterVpc.id
  cidr_block        = var.privateSubnetCidrRequesterVpc
  availability_zone = var.privateAzRequesterVpc
  provider = aws.Tokyo
  tags = {
    Name = "privateSubnet"
  }
}

resource "aws_subnet" "publicSubnetAccepterVpc" {
  vpc_id            = aws_vpc.AccepterVpc.id
  cidr_block        = var.publicSubnetCidrAccepterVpc
  availability_zone = var.publicAzAccepterVpc
  provider          = aws.Mumbai
  tags = {
    Name = "publicSubnet"
  }
}
resource "aws_subnet" "privateSubnetAccepterVpc" {
  vpc_id            = aws_vpc.AccepterVpc.id
  cidr_block        = var.privateSubnetCidrAccepterVpc
  availability_zone = var.privateAzAccepterVpc
  provider          = aws.Mumbai
  tags = {
    Name = "privateSubnet"
  }
}
