resource "tls_private_key" "generateKey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "keyPairRequesterVpc" {
  provider   = aws.Tokyo
  key_name   = "requesterVpcKeyPair"
  public_key = tls_private_key.generateKey.public_key_openssh
}
resource "aws_key_pair" "keyPairAccepterVpc" {
  provider   = aws.Mumbai
  key_name   = "accepterVpcKeyPair"
  public_key = tls_private_key.generateKey.public_key_openssh
}
