#call vpc module for requester vpc with parameters
module "requesterVpc" {
  providers = {
    aws = aws.requester
  }
  source              = "./modules/vpc"
  name                = "requesterVpc"
  cidrBlock           = var.cidrBlockRequesterVpc
  publicSubnetCidr    = var.publicSubnetListRequester
  privateSubnetCidr   = var.privateSubnetListRequester
  peeringCidrBlock    = var.cidrBlockAccepterVpc
  quadZeroRoute       = var.quadZeroRoute
  peeringConnectionId = module.vpcPeering.peeringConnectionId
  region              = var.requesterRegion
}

#call vpc module for accepter vpc with parameters
module "accepterVpc" {
  providers = {
    aws = aws.accepter
  }
  source              = "./modules/vpc"
  name                = "accepterVpc"
  cidrBlock           = var.cidrBlockAccepterVpc
  publicSubnetCidr    = var.publicSubnetListAccepter
  privateSubnetCidr   = var.privateSubnetListAccepter
  peeringCidrBlock    = var.cidrBlockRequesterVpc
  quadZeroRoute       = var.quadZeroRoute
  peeringConnectionId = module.vpcPeering.peeringConnectionId
  region              = var.accepterRegion
}

#call ec2 module for requester vpc with parameters
module "ec2Requester" {
  providers = {
    aws = aws.requester
  }
  source          = "./modules/ec2"
  instanceName    = "ec2Requester"
  instanceType    = var.instanceTypeRequester
  publicSubnetIds = module.requesterVpc.publicSubnetId
  #publicSubnetId    = module.requesterVpc.publicSubnetId[count.index]
  isAllocatePublicIp = true
  vpcId              = module.requesterVpc.vpcId
  #countV         = count.index
  securityGroupId = module.requesterVpc.securityGroupId
  region          = var.requesterRegion
}

#call ec2 module for accepter vpc with parameters
module "ec2Accepter" {
  providers = {
    aws = aws.accepter
  }
  source          = "./modules/ec2"
  instanceName    = "ec2Accepter"
  instanceType    = var.instanceTypeAccepter
  publicSubnetIds = module.accepterVpc.publicSubnetId
  # publicSubnetId     = module.accepterVpc.publicSubnetId[count.index]
  isAllocatePublicIp = true
  vpcId              = module.accepterVpc.vpcId
  #countValue         = count.index
  securityGroupId = module.accepterVpc.securityGroupId
  region          = var.accepterRegion
}

module "vpcPeering" {
  providers = {
    aws.requester = aws.requester
    aws.accepter  = aws.accepter
  }
  source      = "./modules/vpcPeering"
  peerOwnerId = module.requesterVpc.peerOwnerId
  peerVpcId   = module.accepterVpc.vpcId
  vpcId       = module.requesterVpc.vpcId
  peerRegion  = var.peerRegion
}
