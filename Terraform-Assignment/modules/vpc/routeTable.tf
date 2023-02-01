resource "aws_route_table" "publicRoute" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internetGateway.id
  }
  route {
    cidr_block = var.cidrBlockAnotherVpc
    gateway_id = var.peeringId
  }
  tags = {
    Name = "publicRouteRequesterVpc"
  }
}
resource "aws_route_table_association" "associateSubnetpublicRoute" {
  subnet_id      = aws_subnet.publicSubnet.id
  route_table_id = aws_route_table.publicRoute.id
}

resource "aws_route_table" "privateRoute" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natGateway.id
  }
  tags = {
    Name = "privateRouteRequesterVpc"
  }
}
resource "aws_route_table_association" "associateSubnetprivateRoute" {
  subnet_id      = aws_subnet.privateSubnet.id
  route_table_id = aws_route_table.privateRoute.id
}
