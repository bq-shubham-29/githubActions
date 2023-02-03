#generate key pair
resource "tls_private_key" "generateKey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

#assign public key
resource "aws_key_pair" "keyPair" {
  key_name   = "keyPair${var.instanceName}"
  public_key = tls_private_key.generateKey.public_key_openssh
}

#download private key in local
resource "local_file" "ssh_key" {
  filename = "${aws_key_pair.keyPair.key_name}.pem"
  content  = tls_private_key.generateKey.private_key_pem
}
