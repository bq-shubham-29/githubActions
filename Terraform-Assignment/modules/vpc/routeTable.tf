resource "aws_route_table" "route_public1" {
  vpc_id   = aws_vpc.requesterVpc.id
  provider = aws.Tokyo
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internetGatewayRequesterVpc.id
  }
  route {
    cidr_block = aws_vpc.AccepterVpc.cidr_block
    gateway_id = aws_vpc_peering_connection.peeringRequesterVpc.id
  }
  tags = {
    Name = "publicRouteRequesterVpc"
  }
}
resource "aws_route_table_association" "associate_subnet_public1" {
  provider       = aws.Tokyo
  subnet_id      = aws_subnet.publicSubnetRequesterVpc.id
  route_table_id = aws_route_table.route_public1.id
}

resource "aws_route_table" "route_private1" {
  vpc_id   = aws_vpc.requesterVpc.id
  provider = aws.Tokyo
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natGatewayRequesterVpc.id
  }
  tags = {
    Name = "privateRouteRequesterVpc"
  }
}
resource "aws_route_table_association" "associate_subnet_private1" {
  provider       = aws.Tokyo
  subnet_id      = aws_subnet.privateSubnetRequesterVpc.id
  route_table_id = aws_route_table.route_private1.id
}

resource "aws_route_table" "route_public2" {
  vpc_id   = aws_vpc.AccepterVpc.id
  provider = aws.Mumbai
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internetGatewayAccepterVpc.id
  }
  route {
    cidr_block = aws_vpc.requesterVpc.cidr_block
    gateway_id = aws_vpc_peering_connection.peeringRequesterVpc.id
  }
  tags = {
    Name = "publicRouteAccepterVpc"
  }
}

resource "aws_route_table_association" "associate_subnet_public2" {
  provider       = aws.Mumbai
  subnet_id      = aws_subnet.publicSubnetAccepterVpc.id
  route_table_id = aws_route_table.route_public2.id
}


resource "aws_route_table" "route_private2" {
  vpc_id   = aws_vpc.AccepterVpc.id
  provider = aws.Mumbai
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natGatewayAccepterVpc.id
  }
  tags = {
    Name = "privateRouteAccepterVpc"
  }
}

resource "aws_route_table_association" "associate_subnet_private2" {
  provider       = aws.Mumbai
  subnet_id      = aws_subnet.privateSubnetAccepterVpc.id
  route_table_id = aws_route_table.route_private2.id
}
