resource "aws_vpc_peering_connection" "vpc_peering" {
  peer_owner_id = aws_vpc.vpc1.owner_id
  peer_vpc_id   = aws_vpc.vpc2.id
  vpc_id        = aws_vpc.vpc1.id
  peer_region   = "ap-south-1"
  auto_accept   = false
}

resource "aws_vpc_peering_connection_accepter" "peer" {
  provider                  = aws.Mumbai
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id
  auto_accept               = true
}

