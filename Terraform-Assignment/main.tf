#call vpc module for requester vpc with parameters
module "requesterVpc" {
  providers = {
    aws = aws.requester
  }
  source              = "./modules/vpc"
  name                = var.requesterVpcName
  cidrBlock           = var.cidrBlockRequesterVpc
  publicSubnetCidr    = var.publicSubnetListRequester
  privateSubnetCidr   = var.privateSubnetListRequester
  peeringCidrBlock    = var.cidrBlockAccepterVpc
  quadZeroRoute       = var.quadZeroRoute
  peeringConnectionId = module.vpcPeering.peeringConnectionId
  region              = var.requesterRegion
  mapPublicIpOnLaunch = var.mapPublicIpOnLaunch
  ingressPorts        = var.ingressPorts 
}

#call vpc module for accepter vpc with parameters
module "accepterVpc" {
  providers = {
    aws = aws.accepter
  }
  source              = "./modules/vpc"
  name                = var.accepterVpcName
  cidrBlock           = var.cidrBlockAccepterVpc
  publicSubnetCidr    = var.publicSubnetListAccepter
  privateSubnetCidr   = var.privateSubnetListAccepter
  peeringCidrBlock    = var.cidrBlockRequesterVpc
  quadZeroRoute       = var.quadZeroRoute
  peeringConnectionId = module.vpcPeering.peeringConnectionId
  region              = var.accepterRegion
  mapPublicIpOnLaunch = var.mapPublicIpOnLaunch
  ingressPorts        = var.ingressPorts 
}

#call ec2 module for requester vpc with parameters
module "ec2Requester" {
  providers = {
    aws = aws.requester
  }
  source          = "./modules/ec2"
  instanceName    = var.requesterInstanceName
  instanceType    = var.instanceType
  publicSubnetIds = module.requesterVpc.publicSubnetId
  vpcId           = module.requesterVpc.vpcId
  securityGroupId = module.requesterVpc.securityGroupId
  region          = var.requesterRegion
}

#call ec2 module for accepter vpc with parameters
module "ec2Accepter" {
  providers = {
    aws = aws.accepter
  }
  source          = "./modules/ec2"
  instanceName    = var.accepterInstanceName
  instanceType    = var.instanceType
  publicSubnetIds = module.accepterVpc.publicSubnetId
  vpcId           = module.accepterVpc.vpcId
  securityGroupId = module.accepterVpc.securityGroupId
  region          = var.accepterRegion
}

module "vpcPeering" {
  providers = {
    aws.requester = aws.requester
    aws.accepter  = aws.accepter
  }
  source              = "./modules/vpcPeering"
  peerOwnerId         = module.requesterVpc.peerOwnerId
  peerVpcId           = module.accepterVpc.vpcId
  vpcId               = module.requesterVpc.vpcId
  peerRegion          = var.accepterRegion
  isPeeringAutoAccept = var.isPeeringAutoAccept
}
