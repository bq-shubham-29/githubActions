#return public subnet id to main for ec2 module
output "publicSubnetId" {
  value = aws_subnet.publicSubnet.*.id
}

#return vpc id to main for ec2 module
output "vpcId" {
  value = aws_vpc.vpc.id
}

output "peerOwnerId" {
  value = aws_vpc.vpc.owner_id
}

output "securityGroupId" {
  value = aws_security_group.securityGroup.id
}
