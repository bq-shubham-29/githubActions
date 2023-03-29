resource "aws_launch_template" "launchTemplate" {
  name          = "launchTemplate"
  image_id      = data.aws_ami.instanceAmi.id
  instance_type = var.instanceType
  key_name      = "my-key"
  network_interfaces {
    associate_public_ip_address = true
    subnet_id = "subnet-0f8bfd2d19880f7ac"
  }
  placement {
    availability_zone = var.availabilityZone
  }

  # iam_instance_profile {
  #   arn = "arn:aws:iam::195767721609:instance-profile/EC2-CloudWatch"
  # }
  
  # user_data = filebase64("${path.module}/userData.sh")
  user_data = (base64encode(templatefile("${path.module}/userData.sh",
    {
      githubActionsToken = var.githubActionsToken
      githubActionsUrl   = var.githubActionsUrl
  })))
}

