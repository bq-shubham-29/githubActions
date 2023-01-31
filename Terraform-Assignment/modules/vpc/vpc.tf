# resource "aws_vpc" "AccepterVpc" {
#   for_each = toset(["${var.cidrBlockRequesterVpc}","Mumbai"],["${var.cidrBlockAccepterVpc}","Tokyo"])
#   iterator = port
#   contener{
#       provider   = aws.Mumbai
#       cidr_block = port.value
#       tags = {
#       Name = var.nameAccepterVpc
#       }
#    }
# }


resource "aws_vpc" "requesterVpc" {
  cidr_block = var.cidrBlockRequesterVpc
  provider = aws.Tokyo
  tags = {
    Name = var.nameRequesterVpc
  }
}
resource "aws_vpc" "AccepterVpc" {
  cidr_block = var.cidrBlockAccepterVpc
  provider   = aws.Mumbai
  tags = {
    Name = var.nameAccepterVpc
  }
}
