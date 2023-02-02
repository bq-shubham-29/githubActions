#create elastic ip
resource "aws_eip" "eip" {
  tags = {
    "Name" = "eip-${var.region}"
  }
}
