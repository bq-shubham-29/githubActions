resource "aws_instance" "EC2" {
     ami = var.ami
     instance_type =var.instance_type
     subnet_id = var.subnet_id
     associate_public_ip_address = var.public_ip
}