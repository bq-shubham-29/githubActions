resource "aws_internet_gateway" "internetGateway" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "internetGateway"
  }
}
