variable "instanceType" {
  type = string
}

variable "isAllocatePublicIp" {
  type = bool
}

variable "vpcId" {
  type = string
}

#this is for dynamically change the name
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
