module "vpc" {
  source = "./modules/vpc"

  # providers = {
  #   aws=aws.singapore
  #  }

  name_tag = "my-vpc1"
  cidr = var.cidr_ap-northeast-1
  AZ_pub = var.AZ-pub_ap-northeast-1
  AZ_pvt = var.AZ-pub_ap-northeast-1
  pub_cidrsubnet_newbits = 4
  pub_cidrsubnet_netnum = 0
  pvt_cidrsubnet_newbits = 4
  pvt_cidrsubnet_netnum = 1
  route_gateway_id = aws_vpc_peering_connection.vpc_peering.id
  route_cidr = module.vpc2.vpc_cidr

}

module "EC2_pub" {
  source = "./modules/ec2"

  ami = var.image_id1
  instance_type = var.instance_type
  subnet_id= module.vpc.public_subnet_id
  public_ip = true
  vpc_id= module.vpc.vpc_id
}




module "vpc2" {
  source = "./modules/vpc"

  providers = {
    aws=aws.mumbai
   }

  name_tag = "my-vpc1"
  cidr = var.cidr_ap-south-1
  AZ_pub = var.AZ-pub_ap-south-1
  AZ_pvt = var.AZ-pvt_ap-south-1

  pub_cidrsubnet_newbits = 8
  pub_cidrsubnet_netnum = 0
  pvt_cidrsubnet_newbits = 8
  pvt_cidrsubnet_netnum = 1
  route_gateway_id = aws_vpc_peering_connection.vpc_peering.id
  route_cidr = module.vpc.vpc_cidr
}

module "EC2_pub2" {
  source = "./modules/ec2"

  providers = {
    aws=aws.mumbai
   }

  ami = var.image_id2
  instance_type = var.instance_type
  subnet_id= module.vpc2.public_subnet_id
  public_ip = true
  vpc_id= module.vpc2.vpc_id
}


resource "aws_vpc_peering_connection" "vpc_peering" {
  peer_owner_id = module.vpc.vpc_owner_id
  peer_vpc_id   = module.vpc2.vpc_id
  vpc_id        = module.vpc.vpc_id
  peer_region   = "ap-south-1"
  auto_accept   = false
}

resource "aws_vpc_peering_connection_accepter" "peer" {
  provider                  = aws.mumbai
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id
  auto_accept               = true
}
