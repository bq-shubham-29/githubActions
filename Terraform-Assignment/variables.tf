variable "instanceTypeRequester" {
  type = string
}

variable "instanceTypeAccepter" {
  type = string
}

variable "cidrBlockRequesterVpc" {
  type = string
}

variable "cidrBlockAccepterVpc" {
  type = string
}

variable "peerRegion" {
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
