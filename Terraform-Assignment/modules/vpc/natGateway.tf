#create natgateway
resource "aws_nat_gateway" "natGateway" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.publicSubnet[0].id
  tags = {
    Name = "natGateway-${var.region}"
  }
  depends_on = [aws_internet_gateway.internetGateway]
}
