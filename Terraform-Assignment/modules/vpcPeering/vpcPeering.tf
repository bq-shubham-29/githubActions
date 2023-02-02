#generate request for vpc peering
resource "aws_vpc_peering_connection" "peeringRequesterVpc" {
  provider      = aws.requester
  peer_owner_id = var.peerOwnerId
  peer_vpc_id   = var.peerVpcId
  vpc_id        = var.vpcId
  peer_region   = var.peerRegion
  auto_accept   = false
}

#accept request for vpc peering
resource "aws_vpc_peering_connection_accepter" "peeringAccepterVpc" {
  provider                  = aws.accepter
  vpc_peering_connection_id = aws_vpc_peering_connection.peeringRequesterVpc.id
  auto_accept               = true
}
