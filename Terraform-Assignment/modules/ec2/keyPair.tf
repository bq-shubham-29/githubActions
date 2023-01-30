resource "aws_key_pair" "my_key1" {
key_name   = "aws_key"
public_key =file("/home/ubuntu/terraform_assign/Training/id_rsa.pub")
}

resource "aws_key_pair" "my_key2" {
provider = aws.Mumbai
key_name   = "aws_key"
public_key =file("/home/ubuntu/terraform_assign/Training/id_rsa.pub")
}
