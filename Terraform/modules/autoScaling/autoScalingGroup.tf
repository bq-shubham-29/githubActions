resource "aws_autoscaling_group" "asg" {
  name                = "asg"
  min_size            = var.minSize
  max_size            = var.maxSize
  desired_capacity    = var.desiredCapacity
  vpc_zone_identifier = aws_subnet.publicSubnet.*.id
  launch_template {
    id      = aws_launch_template.launchTemplate.id
    version = "$Latest"
  }
}

resource "aws_autoscaling_policy" "asgPolicy" {
  name                   = "asgPolicy"
  scaling_adjustment     = var.scalingAdjustment
  adjustment_type        = var.adjustmentType
  cooldown               = var.cooldown
  autoscaling_group_name = aws_autoscaling_group.asg.name
}
