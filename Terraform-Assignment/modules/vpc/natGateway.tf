resource "aws_nat_gateway" "natGateway" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.publicSubnet.id
  tags = {
    Name = "natGateway"
  }
  depends_on = [aws_internet_gateway.internetGateway]
}
