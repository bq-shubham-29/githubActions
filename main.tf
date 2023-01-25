module "vpc" {
  source = "./modules/vpc"

  name_tag = "my-vpc1"
  cidr = "10.0.0.0/16"
  AZ_pub = "ap-southeast-1b"
  AZ_pvt = "ap-southeast-1a"
}

module "EC2_pub" {
  source = "./modules/ec2"

  ami = "ami-0b7e55206a0a22afc"
  instance_type = var.instance_type
  subnet_id= module.vpc.public_subnet_id
  public_ip = true
  vpc_id= module.vpc.vpc_id
}