data "aws_ami" "instanceAmi" {
  most_recent = true
  filter {
    name   = "name"
    values = var.amiName
  }
  filter {
    name   = "root-device-type"
    values = var.amiRootDeviceType
  }
  filter {
    name   = "virtualization-type"
    values = var.amiVirtualizationType
  }
}
