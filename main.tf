module "vpc" {
  source = "./modules/vpc_module"

  name_tag = "my-vpc"
  cidr = "10.0.0.0/16"
  AZ_pub = "ap-southeast-1b"
  AZ_pvt = "ap-southeast-1a"
}

module "EC2_pub" {
  source = "./modules/EC2_module"

  ami = "ami-0b7e55206a0a22afc"
  instance_type = "t2.micro"
  subnet_id= module.vpc.public_subnet_id
  public_ip = true
}

module "EC2_pvt" {
  source = "./modules/EC2_module"
  
  ami = "ami-0b7e55206a0a22afc"
  instance_type = "t2.micro"
  subnet_id= module.vpc.private_subnet_id
  public_ip = false
}