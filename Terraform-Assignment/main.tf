module "requesterVpc" {
  source = "./modules/vpc"
  name   = "requesterVpc"
  providers = {
    aws = aws.Tokyo
  }
  cidrBlock           = var.cidrBlockRequesterVpc
  publicAz            = var.publicAzRequesterVpc
  privateAz           = var.privateAzRequesterVpc
  publicSubnetCidr    = var.publicSubnetCidrRequesterVpc
  privateSubnetCidr   = var.privateSubnetCidrRequesterVpc
  peeringId           = aws_vpc_peering_connection.peeringRequesterVpc.id
  cidrBlockAnotherVpc = var.cidrBlockAccepterVpc
}
module "accepterVpc" {
  source = "./modules/vpc"
  name   = "accepterVpc"
  providers = {
    aws = aws.Mumbai
  }
  cidrBlock           = var.cidrBlockAccepterVpc
  publicAz            = var.publicAzAccepterVpc
  privateAz           = var.privateAzAccepterVpc
  publicSubnetCidr    = var.publicSubnetCidrAccepterVpc
  privateSubnetCidr   = var.privateSubnetCidrAccepterVpc
  peeringId           = aws_vpc_peering_connection.peeringRequesterVpc.id
  cidrBlockAnotherVpc = var.cidrBlockRequesterVpc
}
module "ec2RequesterVpc" {
  providers = {
    aws = aws.Tokyo
  }
  source             = "./modules/ec2"
  instanceType       = var.instanceTypeRequester
  publicSubnetId     = module.requesterVpc.publicSubnetId
  isAllocatePublicIp = true
  vpcId              = module.requesterVpc.vpcId
}
module "ec2AccepterVpc" {
  providers = {
    aws = aws.Mumbai
  }
  source             = "./modules/ec2"
  instanceType       = var.instanceTypeAccepter
  publicSubnetId     = module.accepterVpc.publicSubnetId
  isAllocatePublicIp = true
  vpcId              = module.accepterVpc.vpcId
}
resource "aws_vpc_peering_connection" "peeringRequesterVpc" {
  provider      = aws.Tokyo
  peer_owner_id = module.requesterVpc.peer_owner_id
  peer_vpc_id   = module.accepterVpc.vpcId
  vpc_id        = module.requesterVpc.vpcId
  peer_region   = var.peerRegion
  auto_accept   = false
}
resource "aws_vpc_peering_connection_accepter" "peeringAccepterVpc" {
  provider                  = aws.Mumbai
  vpc_peering_connection_id = aws_vpc_peering_connection.peeringRequesterVpc.id
  auto_accept               = true
}
