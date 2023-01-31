module "vpc" {
  source                        = "./modules/vpc"
  nameRequesterVpc              = "my-vpc1"
  cidrBlockRequesterVpc         = var.cidrBlockRequesterVpc
  publicAzRequesterVpc          = var.publicAzRequesterVpc
  privateAzRequesterVpc         = var.privateAzRequesterVpc
  publicSubnetCidrRequesterVpc  = var.publicSubnetCidrRequesterVpc
  privateSubnetCidrRequesterVpc = var.privateSubnetCidrRequesterVpc
  nameAccepterVpc               = "my-vpc2"
  cidrBlockAccepterVpc          = var.cidrBlockAccepterVpc
  publicAzAccepterVpc           = var.publicAzAccepterVpc
  privateAzAccepterVpc          = var.privateAzAccepterVpc
  publicSubnetCidrAccepterVpc   = var.publicSubnetCidrAccepterVpc
  privateSubnetCidrAccepterVpc  = var.privateSubnetCidrAccepterVpc
}
module "ec2" {
  source                         = "./modules/ec2"
  instanceTypeRequester          = var.instanceTypeRequester
  publicSubnetIdRequesterVpc     = module.vpc.publicSubnetIdRequesterVpc
  isAllocatePublicIpRequesterVpc = true
  idRequesterVpc                 = module.vpc.idRequesterVpc
  instanceTypeAccepter           = var.instanceTypeAccepter
  publicSubnetIdAccepterVpc      = module.vpc.publicSubnetIdAccepterVpc
  isAllocatePublicIpAccepterVpc  = true
  idAccepterVpc                  = module.vpc.idAccepterVpc
}
