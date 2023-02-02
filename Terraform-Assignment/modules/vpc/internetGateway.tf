#create internet gateway
resource "aws_internet_gateway" "internetGateway" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "igw-${var.region}"
  }
}
