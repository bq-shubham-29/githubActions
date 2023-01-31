# resource "aws_key_pair" "keyPairRequesterVpc" {
#   provider   = aws.Tokyo
#   key_name   = "requesterVpcKeyPair"
#   public_key = file("${path.module}/id_rsa.pub")
# }

# resource "aws_key_pair" "keyPairAccepterVpc" {
#   provider   = aws.Mumbai
#   key_name   = "accepterVpcKeyPair"
#   public_key = file("${path.module}/id_rsa.pub")
# }
