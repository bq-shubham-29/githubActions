resource "aws_autoscaling_group" "asg" {
  name                = "asg"
  min_size            = var.minSize
  max_size            = var.maxSize
  desired_capacity    = var.desiredCapacity
  vpc_zone_identifier = var.subnetIds
  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.launchTemplate.id
      }
    }
  }
  target_group_arns = [var.targetGroupArn]
}

resource "aws_autoscaling_policy" "asgPolicy" {
  name                   = "asgPolicy"
  scaling_adjustment     = var.scalingAdjustment
  adjustment_type        = var.adjustmentType
  cooldown               = var.cooldown
  autoscaling_group_name = aws_autoscaling_group.asg.name
}
