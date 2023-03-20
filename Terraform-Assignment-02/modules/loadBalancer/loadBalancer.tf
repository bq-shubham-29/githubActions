resource "aws_lb_target_group" "targetGroup" {
  name        = "targetGrp"
  target_type = var.targetType
  port        = var.targetGroupPort
  protocol    = var.targetGroupProtocol
  vpc_id      = var.vpcId
  health_check {
    path                = var.healthCheckPath
    healthy_threshold   = var.healthyThreshold
    unhealthy_threshold = var.unhealthyThreshold
  }
}

resource "aws_lb" "alb" {
  name               = "alb"
  load_balancer_type = var.loadBalancerType
  security_groups    = var.securityGroups
  subnets            = var.subnetIds
}

resource "aws_lb_listener" "addListener" {
  load_balancer_arn = aws_lb.alb.arn
  port              = var.targetGroupPort
  protocol          = var.targetGroupProtocol
  default_action {
    type             = var.loadBalancerListenerType
    target_group_arn = aws_lb_target_group.targetGroup.arn
  }
}
