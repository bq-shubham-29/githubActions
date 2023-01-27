module "vpc" {
  source = "./modules/vpc"

  # providers = {
  #   aws=aws.singapore
  #  }

  name_tag = "my-vpc1"
  cidr = "10.0.0.0/24"
  AZ_pub = "ap-northeast-1c"
  AZ_pvt = "ap-northeast-1a"
  pub_cidrsubnet_newbits = 4
  pub_cidrsubnet_netnum = 0
  pvt_cidrsubnet_newbits = 4
  pvt_cidrsubnet_netnum = 1
}

module "EC2_pub" {
  source = "./modules/ec2"

  ami = "ami-0cd7ad8676931d727"
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
  cidr = "192.168.0.0/16"
  AZ_pub = "ap-south-1b"
  AZ_pvt = "ap-south-1a"

  pub_cidrsubnet_newbits = 8
  pub_cidrsubnet_netnum = 0
  pvt_cidrsubnet_newbits = 8
  pvt_cidrsubnet_netnum = 1

}

module "EC2_pub2" {
  source = "./modules/ec2"

  providers = {
    aws=aws.mumbai
   }

  ami = "ami-06984ea821ac0a879"
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

  # accepter {
  #   allow_remote_vpc_dns_resolution = true
  # }

  # requester {
  #   allow_remote_vpc_dns_resolution = true
  # }
}

resource "aws_vpc_peering_connection_accepter" "peer" {
  provider                  = aws.mumbai
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id
  auto_accept               = true
}
