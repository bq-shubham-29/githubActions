resource "aws_vpc_peering_connection" "peeringRequesterVpc" {
  provider = aws.Tokyo
  peer_owner_id = aws_vpc.requesterVpc.owner_id
  peer_vpc_id   = aws_vpc.AccepterVpc.id
  vpc_id        = aws_vpc.requesterVpc.id
  peer_region   = "ap-south-1"
  auto_accept   = false
}
resource "aws_vpc_peering_connection_accepter" "peeringAccepterVpc" {
  provider                  = aws.Mumbai
  vpc_peering_connection_id = aws_vpc_peering_connection.peeringRequesterVpc.id
  auto_accept               = true
}
