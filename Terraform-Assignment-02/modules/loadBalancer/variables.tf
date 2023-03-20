variable "targetType" {
  type = string
}

variable "vpcId" {
  type = string
}

variable "loadBalancerType" {
  type = string
}

variable "securityGroups" {
  type = list(string)
}

variable "subnetIds" {
  type = list(string)
}

variable "targetGroupPort" {
  type = number
}

variable "targetGroupProtocol" {
  type = string
}

variable "healthCheckPath" {
  type = string
}

variable "healthyThreshold" {
  type = number
}

variable "unhealthyThreshold" {
  type = number
}

variable "loadBalancerListenerType" {
  type = string
}
