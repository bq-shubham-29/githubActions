resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name = "igw_${aws_vpc.vpc1.id}"
  }
}

resource "aws_internet_gateway" "igw2" {
  vpc_id = aws_vpc.vpc2.id
  provider = aws.Mumbai
  tags = {
    Name = "igw_${aws_vpc.vpc2.id}"
  }
}
