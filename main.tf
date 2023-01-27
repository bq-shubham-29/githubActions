module "vpc" {
  source = "./modules/vpc"

  # providers = {
  #   aws=aws.singapore
  #  }

  name_tag = "my-vpc1"
  cidr = "10.0.0.0/16"
  AZ_pub = "ap-northeast-1c"
  AZ_pvt = "ap-northeast-1a"
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
  cidr = "10.0.0.0/16"
  AZ_pub = "ap-south-1b"
  AZ_pvt = "ap-south-1a"
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

output "name" {
   value=module.vpc2.vpc_id
}
