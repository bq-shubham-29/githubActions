resource "aws_route_table" "route_public1" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw1.id
  }

  route {
    cidr_block = aws_vpc.vpc2.cidr_block
    gateway_id = aws_vpc_peering_connection.vpc_peering.id
  }

  tags = {
    Name = "route_public"
  }
}

resource "aws_route_table_association" "associate_subnet_public1" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.route_public1.id
}


resource "aws_route_table" "route_private1" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NatGateway1.id
  }

  tags = {
    Name = "route_private"
  }
}

resource "aws_route_table_association" "associate_subnet_private1" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.route_private1.id
}










resource "aws_route_table" "route_public2" {
  vpc_id = aws_vpc.vpc2.id
  provider = aws.Mumbai

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw2.id
  }

  route {
    cidr_block = aws_vpc.vpc1.cidr_block
    gateway_id = aws_vpc_peering_connection.vpc_peering.id
  }
  

  tags = {
    Name = "route_public"
  }
}

resource "aws_route_table_association" "associate_subnet_public2" {
  provider = aws.Mumbai
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.route_public2.id
}


resource "aws_route_table" "route_private2" {
  vpc_id = aws_vpc.vpc2.id
  provider=aws.Mumbai

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NatGateway2.id
  }
  tags = {
    Name = "route_private"
  }
}

resource "aws_route_table_association" "associate_subnet_private2" {
  provider = aws.Mumbai
  subnet_id      = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.route_private2.id
}
