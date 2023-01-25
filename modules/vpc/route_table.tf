resource "aws_route_table" "route_public" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "route_public"
  }
}

resource "aws_route_table_association" "associate_subnet" {
  subnet_id      = aws_subnet.pub_sub.id
  route_table_id = aws_route_table.route_public.id
}


resource "aws_route_table" "route_private" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NatGW.id
  }
  tags = {
    Name = "route_private"
  }
}

resource "aws_route_table_association" "associate_subnet2" {
  subnet_id      = aws_subnet.pvt_sub.id
  route_table_id = aws_route_table.route_private.id
}