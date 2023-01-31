resource "aws_instance" "instanceRequesterVpc" {
  ami                         = data.aws_ami.instanceAmiRequesterVpc.id
  instance_type               = var.instanceTypeRequester
  subnet_id                   = var.publicSubnetIdRequesterVpc
  associate_public_ip_address = var.isAllocatePublicIpRequesterVpc
  security_groups             = ["${aws_security_group.securityGroupRequesterVpc.id}"]
  provider                    = aws.Tokyo
  key_name                    = aws_key_pair.keyPairRequesterVpc.key_name
  user_data                   = file("${path.module}/userData.sh")
}
resource "aws_instance" "instanceAccepterVpc" {
  ami                         = data.aws_ami.instanceAmiAccepterVpc.id
  instance_type               = var.instanceTypeAccepter
  subnet_id                   = var.publicSubnetIdAccepterVpc
  associate_public_ip_address = var.isAllocatePublicIpAccepterVpc
  security_groups             = ["${aws_security_group.securityGroupAccepterVpc.id}"]
  provider                    = aws.Mumbai
  key_name                    = aws_key_pair.keyPairAccepterVpc.key_name
  user_data                   = file("${path.module}/userData.sh")
}
     