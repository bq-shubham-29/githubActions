data "aws_availability_zones" "available" {
  state = "available"
}

#create public subnet
resource "aws_subnet" "publicSubnet" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = data.aws_availability_zones.available.names[0]
  count                   = length(var.publicSubnetCidr)
  cidr_block              = var.publicSubnetCidr[count.index]
  map_public_ip_on_launch = var.mapPublicIpOnLaunch
  tags = {
    Name = "publicSubnet-${count.index}-${var.region}"
  }
}

#create private subnet
resource "aws_subnet" "privateSubnet" {
  vpc_id            = aws_vpc.vpc.id
  availability_zone = data.aws_availability_zones.available.names[1]
  count             = length(var.privateSubnetCidr)
  cidr_block        = var.privateSubnetCidr[count.index]
  tags = {
    Name = "privateSubnet-${count.index}-${var.region}"
  }
}
