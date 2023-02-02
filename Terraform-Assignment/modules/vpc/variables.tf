variable "name" {
  type = string
}

variable "cidrBlock" {
  type = string
}

variable "publicSubnetCidr" {
  type = list(any)
}

variable "privateSubnetCidr" {
  type = list(any)
}

variable "peeringCidrBlock" {
  type = string
}

variable "quadZeroRoute" {
  type = string
}

variable "peeringConnectionId" {
  type = string
}

variable "region" {
  type = string
}
