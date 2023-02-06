data "aws_availability_zones" "available" {
  state = "available"
}

#create public subnet
resource "aws_subnet" "publicSubnet" {
  tags = {
    Name = "publicSubnet-${count.index}-${var.region}"
  }
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = data.aws_availability_zones.available.names[0]
  count                   = length(var.publicSubnetCidr)
  cidr_block              = var.publicSubnetCidr[count.index]
  map_public_ip_on_launch = var.mapPublicIpOnLaunch
}

#create private subnet
resource "aws_subnet" "privateSubnet" {
  tags = {
    Name = "privateSubnet-${count.index}-${var.region}"
  }
  vpc_id            = aws_vpc.vpc.id
  availability_zone = data.aws_availability_zones.available.names[1]
  count             = length(var.privateSubnetCidr)
  cidr_block        = var.privateSubnetCidr[count.index]
}
