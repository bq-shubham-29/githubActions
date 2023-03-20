variable "githubActionsUrl" {
  type = string
}

variable "githubActionsToken" {
  type = string
}

variable "keyName" {
  type = string
}

variable "instanceType" {
  type = string
}

variable "subnetIds" {
  type = list(string)
}

variable "desiredCapacity" {
  type = number
}

variable "maxSize" {
  type = number
}

variable "minSize" {
  type = number
}

variable "targetGroupArn" {
  type = string
}

variable "scalingAdjustment" {
  type = number
}

variable "availabilityZone" {
  type = string
}

variable "cooldown" {
  type = number
}

variable "comparisonOperator" {
  type = string
}

variable "period" {
  type = number
}

variable "threshold" {
  type = number
}

variable "evaluationPeriods" {
  type = number
}

variable "metricName" {
  type = string
}

variable "cloudWatchStatistic" {
  type = string
}

variable "cloudWatchNamespace" {
  type = string
}

variable "adjustmentType" {
  type = string
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

