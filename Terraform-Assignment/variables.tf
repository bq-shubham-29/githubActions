variable "instance_type1" {
  type = string
}

variable "instance_type2" {
  type = string
}

variable "cidr_ap-northeast-1" {
  type    = string
  default = "10.0.0.0/24"
}

variable "AZ-pub_ap-northeast-1" {
  type    = string
  default = "ap-northeast-1c"
}

variable "AZ-pvt_ap-northeast-1" {
  type    = string
  default = "ap-northeast-1a"
}


variable "cidr_ap-south-1" {
  type    = string
  default = "192.168.0.0/16"
}

variable "AZ-pub_ap-south-1" {
  type    = string
  default = "ap-south-1b"
}

variable "AZ-pvt_ap-south-1" {
  type    = string
  default = "ap-south-1a"
}

variable "image_id1" {
  type    = string
  default = "ami-0cd7ad8676931d727"
}

variable "image_id2" {
  type    = string
  default = "ami-06984ea821ac0a879"
}

variable "public_newbits1" {
  type = number
  default=4
}

variable "public_netnum1" {
  type = number
  default=0
}

variable "private_newbits1" {
  type = number
  default=4
}

variable "private_netnum1" {
  type = number
  default=1
}

variable "public_newbits2" {
  type = number
  default=8
}

variable "public_netnum2" {
  type = number
  default=0
}

variable "private_newbits2" {
  type = number
  default=8
}

variable "private_netnum2" {
  type = number
  default=1
}

