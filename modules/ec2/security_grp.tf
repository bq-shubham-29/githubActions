resource "aws_security_group" "security_group" {
     name        = "inbound"
     vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = [22,80]
    iterator= port
    content{
            from_port        = port.value
            to_port          = port.value
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
        }
    }

  egress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

}