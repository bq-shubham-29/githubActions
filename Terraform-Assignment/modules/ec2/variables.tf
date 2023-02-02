variable "instanceType" {
  type = string
}

variable "publicSubnetId" {
  type = string
}

variable "isAllocatePublicIp" {
  type = bool
}

variable "vpcId" {
  type = string
}

#this is for dynamically change the name
variable "countValue" {
  type = number
}

variable "securityGroupId" {
  type = string
}

variable "region" {
  type = string
}
