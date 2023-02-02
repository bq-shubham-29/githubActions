#create public route table
resource "aws_route_table" "publicRoute" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = var.quadZeroRoute
    gateway_id = aws_internet_gateway.internetGateway.id
  }
  route {
    cidr_block = var.peeringCidrBlock
    gateway_id = var.peeringConnectionId
  }
  tags = {
    Name = "publicRouteRequester-${var.region}"
  }
}

#associate subnet to public route table
resource "aws_route_table_association" "associateSubnetpublicRoute" {
  subnet_id      = aws_subnet.publicSubnet[0].id
  route_table_id = aws_route_table.publicRoute.id
}

#create private route table
resource "aws_route_table" "privateRoute" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = var.quadZeroRoute
    gateway_id = aws_nat_gateway.natGateway.id
  }
  tags = {
    Name = "privateRouteRequester-${var.region}"
  }
}

#associate subnet to private route table
resource "aws_route_table_association" "associateSubnetprivateRoute" {
  subnet_id      = aws_subnet.privateSubnet[0].id
  route_table_id = aws_route_table.privateRoute.id
}
