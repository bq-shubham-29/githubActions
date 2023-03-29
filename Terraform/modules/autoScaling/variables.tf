variable "githubActionsUrl" {
  type = string
  default = "https://github.com/bq-shubham-29/Training"
}

variable "githubActionsToken" {
  type = string
}

variable "vpcId" {
  type = string
  default = "vpc-0366ee062ce42dc97"
}

variable "keyName" {
  type = string
  default = "my-key"
}

variable "instanceType" {
  type = string
  default = "t2.micro"
}

variable "publicSubnetCidr" {
  type = list(string)
}

variable "desiredCapacity" {
  type = number
  default = 2
}

variable "maxSize" {
  type = number
  default = 4
}

variable "minSize" {
  type = number
  default = 1
}

variable "scalingAdjustment" {
  type = number
  default = 1
}

variable "availabilityZone" {
  type = string
  default = "ap-south-1a"
}

variable "cooldown" {
  type = number
  default = 300
}

variable "comparisonOperator" {
  type = string
  default = "GreaterThanOrEqualToThreshold"
}

variable "period" {
  type = number
  default = 120
}

variable "threshold" {
  type = number
  default = 50
}

variable "evaluationPeriods" {
  type = number
  default = 2
}

variable "metricName" {
  type = string
  default = "CPUUtilization"
}

variable "cloudWatchStatistic" {
  type = string
  default = "Average"
}

variable "cloudWatchNamespace" {
  type = string
  default = "AWS/EC2"
}

variable "adjustmentType" {
  type = string
  default = "ChangeInCapacity"
}

variable "amiName" {
  type = list(string)
}

variable "amiRootDeviceType" {
  type = list(string)
}

variable "amiVirtualizationType" {
  type = list(string)
}

