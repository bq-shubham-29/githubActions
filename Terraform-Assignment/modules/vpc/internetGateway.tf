resource "aws_internet_gateway" "internetGatewayRequesterVpc" {
  vpc_id   = aws_vpc.requesterVpc.id
  provider = aws.Tokyo
  tags = {
    Name = "internetGateway"
  }
}

resource "aws_internet_gateway" "internetGatewayAccepterVpc" {
  vpc_id   = aws_vpc.AccepterVpc.id
  provider = aws.Mumbai
  tags = {
    Name = "internetGateway"
  }
}
