#This metric monitors ec2 cpu utilization
resource "aws_cloudwatch_metric_alarm" "cloudWatch" {
  alarm_name          = "alarm"
  namespace           = var.cloudWatchNamespace
  comparison_operator = var.comparisonOperator
  evaluation_periods  = var.evaluationPeriods
  metric_name         = var.metricName
  period              = var.period
  threshold           = var.threshold
  statistic           = var.cloudWatchStatistic
  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.asg.name
  }
  alarm_actions = [aws_autoscaling_policy.asgPolicy.arn]
}
