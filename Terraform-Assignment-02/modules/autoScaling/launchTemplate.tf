resource "aws_launch_template" "launchTemplate" {
  name          = "launchTemplate"
  image_id      = data.aws_ami.instanceAmi.id
  instance_type = var.instanceType
  key_name      = aws_key_pair.keyPair.key_name
  network_interfaces {
    associate_public_ip_address = true
  }
  placement {
    availability_zone = var.availabilityZone
  }
  tags = {
    Name = "test"
  }
  # user_data = filebase64("${path.module}/userData.sh")
  user_data = (base64encode(templatefile("${path.module}/userData.sh",
    {
      githubActionsToken = var.githubActionsToken
      githubActionsUrl   = var.githubActionsUrl
  })))
}
