variable "instanceType" {
  type = string
}

variable "cidrBlockRequesterVpc" {
  type = string
}

variable "cidrBlockAccepterVpc" {
  type = string
}

variable "quadZeroRoute" {
  type = string
}

variable "publicSubnetListRequester" {
  type = list(any)
}

variable "privateSubnetListRequester" {
  type = list(any)
}

variable "publicSubnetListAccepter" {
  type = list(any)
}

variable "privateSubnetListAccepter" {
  type = list(any)
}

variable "requesterRegion" {
  type = string
}

variable "accepterRegion" {
  type = string
}

variable "requesterVpcName" {
  type = string
}

variable "accepterVpcName" {
  type = string
}

variable "requesterInstanceName" {
  type = string
}

variable "accepterInstanceName" {
  type = string
}

variable "mapPublicIpOnLaunch" {
  type = bool
}

variable "isPeeringAutoAccept" {
  type = bool
}
