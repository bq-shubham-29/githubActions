resource "aws_eip" "eip1" {
  provider = aws.Tokyo
}

resource "aws_eip" "eip2" {
  provider = aws.Mumbai
}
