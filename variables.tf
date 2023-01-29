variable "instance_type" {
  type=string
}

variable "cidr_ap-northeast-1" {
  type=string
  default = "10.0.0.0/24"
}

variable "AZ-pub_ap-northeast-1" {
  type=string
  default="ap-northeast-1c"
}

variable "AZ-pvt_ap-northeast-1" {
  type=string
  default = "ap-northeast-1a"
}


variable "cidr_ap-south-1" {
  type=string
  default = "192.168.0.0/16"
}

variable "AZ-pub_ap-south-1" {
  type=string
  default="ap-south-1b"
}

variable "AZ-pvt_ap-south-1" {
  type=string
  default = "ap-south-1a"
}

variable "image_id1" {
  type=string
  default = "ami-0cd7ad8676931d727"
}

variable "image_id2" {
  type=string
  default = "ami-06984ea821ac0a879"
}
