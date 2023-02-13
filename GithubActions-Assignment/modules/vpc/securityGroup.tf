#create security group
resource "aws_security_group" "securityGroup" {
  name   = "securityGroup"
  vpc_id = aws_vpc.vpc.id
  dynamic "ingress" {
    for_each = var.ingressPorts
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["${var.quadZeroRoute}"]
    }
  }
  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["${var.quadZeroRoute}"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.quadZeroRoute}"]
  }
}
