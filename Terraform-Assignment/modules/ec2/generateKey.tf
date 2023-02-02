#generate key pair
resource "tls_private_key" "generateKey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

#assign public key
resource "aws_key_pair" "keyPair" {
  key_name   = "keyPair${var.countValue}"
  public_key = tls_private_key.generateKey.public_key_openssh
  #Create a "myKey.pem" to your computer
  provisioner "local-exec" {
    command = "echo '${tls_private_key.generateKey.private_key_pem}' > ./myKey.pem"
  }
}
