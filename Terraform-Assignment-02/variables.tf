variable "instanceType" {
  type    = string
  default = "t2.micro"
}

variable "subnetIds" {
  type = list(string)
}

variable "securityGroups" {
  type = list(string)
}

variable "minSize" {
  type    = number
  default = 1
}

variable "maxSize" {
  type    = number
  default = 4
}

variable "desiredCapacity" {
  type    = number
  default = 2
}

variable "keyName" {
  type    = string
  default = "my-key"
}

variable "loadBalancerType" {
  type    = string
  default = "application"
}

variable "healthCheckPath" {
  type    = string
  default = "/"
}

variable "healthyThreshold" {
  type    = number
  default = 2
}

variable "unhealthyThreshold" {
  type    = number
  default = 2
}

variable "vpcId" {
  type    = string
  default = "vpc-0366ee062ce42dc97"
}

variable "targetType" {
  type    = string
  default = "instance"
}

variable "githubActionsUrl" {
  type    = string
  default = "https://github.com/bq-shubham-29/Training"
}

variable "githubActionsToken" {
  type    = string
  default = "A4X7NVQZBM6KYX6JIUOR3QLEDADEM" #"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"
}

variable "scalingAdjustment" {
  type    = number
  default = 1
}

variable "availabilityZone" {
  type    = string
  default = "ap-south-1a"
}

variable "cooldown" {
  type    = number
  default = 300
}

variable "comparisonOperator" {
  type    = string
  default = "GreaterThanOrEqualToThreshold"
}

variable "evaluationPeriods" {
  type    = number
  default = 2
}

variable "period" {
  type    = number
  default = 120
}

variable "threshold" {
  type    = number
  default = 50
}

variable "targetGroupPort" {
  type    = number
  default = 80
}

variable "targetGroupProtocol" {
  type    = string
  default = "HTTP"
}

variable "metricName" {
  type    = string
  default = "CPUUtilization"
}

variable "cloudWatchStatistic" {
  type    = string
  default = "Average"
}

variable "cloudWatchNamespace" {
  type    = string
  default = "AWS/EC2"
}

variable "adjustmentType" {
  type    = string
  default = "ChangeInCapacity"
}

variable "amiName" {
  type    = list(string)
  default = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20230115"]
}

variable "amiRootDeviceType" {
  type    = list(string)
  default = ["ebs"]
}

variable "amiVirtualizationType" {
  type    = list(string)
  default = ["hvm"]
}

variable "loadBalancerListenerType" {
  type    = string
  default = "forward"
}
