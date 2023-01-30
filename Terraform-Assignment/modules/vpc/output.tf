output "public_subnet_id1" {
  value=aws_subnet.public_subnet1.id
}

output "private_subnet_id1" {
  value=aws_subnet.private_subnet1.id
}

output "public_subnet_id2" {
  value=aws_subnet.public_subnet2.id
}

output "private_subnet_id2" {
  value=aws_subnet.private_subnet2.id
}

output "vpc_id1" {
  value = aws_vpc.vpc1.id
}

output "vpc_id2" {
  value = aws_vpc.vpc2.id
}
