resource "aws_route_table" "route_pub" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "10.0.0.0/24"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "example"
  }
}

resource "aws_route_table_association" "associate_subnet" {
  subnet_id      = aws_subnet.pub_sub
  route_table_id = aws_route_table.route_pub
}


resource "aws_route_table" "route_pvt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "10.0.1.0/24"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "example"
  }
}

resource "aws_route_table_association" "associate_subnet" {
  subnet_id      = aws_subnet.pub_sub
  route_table_id = aws_route_table.route
}