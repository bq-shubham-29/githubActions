resource "tls_private_key" "generateKey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "keyPair" {
  key_name   = "keyPair"
  public_key = tls_private_key.generateKey.public_key_openssh
}
