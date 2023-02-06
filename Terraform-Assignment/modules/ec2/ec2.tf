#create instance
resource "aws_instance" "instance" {
  count           = length(var.publicSubnetIds)
  ami             = data.aws_ami.instanceAmi.id
  instance_type   = var.instanceType
  subnet_id       = var.publicSubnetIds[count.index]
  security_groups = ["${var.securityGroupId}"]
  key_name        = aws_key_pair.keyPair.key_name
  user_data       = file("${path.module}/userData.sh")
  tags = {
    Name = "${var.instanceName}-${count.index}-${var.region}"
  }
}
