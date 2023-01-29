output "public_subnet_id" {
  value=aws_subnet.pub_sub.id
}

output "private_subnet_id" {
  value=aws_subnet.pvt_sub.id
}

output "vpc_id" {
  value=aws_vpc.vpc.id
}

output "vpc_owner_id" {
  value=aws_vpc.vpc.owner_id
}

output "vpc_cidr" {
  value=aws_vpc.vpc.cidr_block
}