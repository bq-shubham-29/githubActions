module "vpc" {
  source = "./modules/vpc"

  name_tag1                   = "my-vpc1"
  cidr1                       = var.cidr_ap-northeast-1
  az_public1                  = var.AZ-pub_ap-northeast-1
  az_private1                 = var.AZ-pub_ap-northeast-1
  public_cidrsubnet_newbits1  = var.public_newbits1
  public_cidrsubnet_netnum1   = var.public_netnum1
  private_cidrsubnet_newbits1 = var.private_newbits1
  private_cidrsubnet_netnum1  = var.private_netnum1

  name_tag2   = "my-vpc2"
  cidr2       = var.cidr_ap-south-1
  az_public2  = var.AZ-pub_ap-south-1
  az_private2 = var.AZ-pvt_ap-south-1
  public_cidrsubnet_newbits2  = var.public_newbits2
  public_cidrsubnet_netnum2   = var.public_netnum2
  private_cidrsubnet_newbits2 = var.private_newbits2
  private_cidrsubnet_netnum2  = var.private_netnum2

}


module "ec2" {
  source = "./modules/ec2"

  ami1           = var.image_id1
  instance_type1 = var.instance_type1
  subnet_id1     = module.vpc.public_subnet_id1
  public_ip1     = true
  vpc_id1        = module.vpc.vpc_id1

  ami2           = var.image_id2
  instance_type2 = var.instance_type2
  subnet_id2     = module.vpc.public_subnet_id2
  public_ip2     = true
  vpc_id2        = module.vpc.vpc_id2

}

