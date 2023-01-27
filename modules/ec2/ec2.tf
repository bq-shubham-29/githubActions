resource "aws_instance" "EC2" {
     ami = var.ami
     instance_type =var.instance_type
     subnet_id = var.subnet_id
     associate_public_ip_address = var.public_ip
     security_groups = ["${aws_security_group.security_group.id}"]
     user_data = <<EOF
     #! /bin/bash
     sudo apt-get update
     sudo apt-get install -y apache2
     sudo systemctl start apache2
     sudo systemctl enable apache2
     echo "Hey this is a terraform assignment" | sudo tee /var/www/html/index.html
     EOF
     }