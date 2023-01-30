resource "aws_instance" "instance_vcp1" {
     ami = var.ami1
     instance_type =var.instance_type1
     subnet_id = var.subnet_id1
     associate_public_ip_address = var.public_ip1
     security_groups = ["${aws_security_group.security_group1.id}"]
     key_name = aws_key_pair.my_key1.key_name
     user_data = file("/home/ubuntu/terraform_assign/Training/modules/ec2/userData.txt")
     }


     resource "aws_instance" "instance_vpc2" {
     ami = var.ami2
     instance_type =var.instance_type2
     subnet_id = var.subnet_id2
     associate_public_ip_address = var.public_ip2
     security_groups = ["${aws_security_group.security_group2.id}"]
     provider = aws.Mumbai
     key_name = aws_key_pair.my_key2.key_name
     user_data = file("/home/ubuntu/terraform_assign/Training/modules/ec2/userData.txt")

     }
     