resource "aws_nat_gateway" "NatGW" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.pub_sub.id

  tags = {
    Name = "NatGW"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}