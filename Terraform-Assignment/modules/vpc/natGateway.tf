resource "aws_nat_gateway" "natGatewayRequesterVpc" {
  allocation_id = aws_eip.eip1.id
  subnet_id     = aws_subnet.publicSubnetRequesterVpc.id
  provider      = aws.Tokyo
  tags = {
    Name = "natGateway"
  }
  depends_on = [aws_internet_gateway.internetGatewayRequesterVpc]
}
resource "aws_nat_gateway" "natGatewayAccepterVpc" {
  allocation_id = aws_eip.eip2.id
  subnet_id     = aws_subnet.publicSubnetAccepterVpc.id
  provider      = aws.Mumbai
  tags = {
    Name = "natGateway"
  }
  depends_on = [aws_internet_gateway.internetGatewayAccepterVpc]
}
