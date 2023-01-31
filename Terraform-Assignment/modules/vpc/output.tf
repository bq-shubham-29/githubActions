output "publicSubnetIdRequesterVpc" {
  value = aws_subnet.publicSubnetRequesterVpc.id
}

output "publicSubnetIdAccepterVpc" {
  value = aws_subnet.publicSubnetAccepterVpc.id
}

output "idRequesterVpc" {
  value = aws_vpc.requesterVpc.id
}

output "idAccepterVpc" {
  value = aws_vpc.AccepterVpc.id
}
