variable "instanceType" {
  type = string
}

variable "vpcId" {
  type = string
}

variable "publicSubnetIds" {
  type = list(string)
}

variable "securityGroupId" {
  type = string
}

variable "region" {
  type = string
}

variable "instanceName" {
  type = string
}
