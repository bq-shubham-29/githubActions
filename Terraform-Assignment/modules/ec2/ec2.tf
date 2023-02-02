#create instance
resource "aws_instance" "instance" {
  ami                         = data.aws_ami.instanceAmi.id
  instance_type               = var.instanceType
  subnet_id                   = var.publicSubnetId
  associate_public_ip_address = var.isAllocatePublicIp
  security_groups             = ["${var.securityGroupId}"]
  key_name                    = aws_key_pair.keyPair.key_name
  user_data                   = file("${path.module}/userData.sh")
  tags = {
    Name = "ec2-${var.countValue}-${var.region}"
  }
}
     