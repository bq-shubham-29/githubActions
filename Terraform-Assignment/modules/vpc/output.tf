output "publicSubnetId" {
  value = aws_subnet.publicSubnet.id
}

output "vpcId" {
  value = aws_vpc.vpc.id
}

output "peer_owner_id" {
  value = aws_vpc.vpc.owner_id
}