data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "publicSubnet" {
  vpc_id                  = var.vpcId
  availability_zone       = "ap-south-1a"#data.aws_availability_zones.available.names[count.index]
  count                   = length(var.publicSubnetCidr)
  cidr_block              = var.publicSubnetCidr[count.index]
  map_public_ip_on_launch = true
  tags = {
    Name = "Subnet"
  }
}
