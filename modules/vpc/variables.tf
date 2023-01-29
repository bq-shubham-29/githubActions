variable "name_tag" {
     type = string
}


variable "cidr" {
    type =string
}


variable "AZ_pub" {
    type=string
}

variable "AZ_pvt" {
    type=string
}

variable "pub_cidrsubnet_newbits" {
    type=number
}

variable "pub_cidrsubnet_netnum" {
    type=number
}

variable "pvt_cidrsubnet_newbits" {
    type=number
}

variable "pvt_cidrsubnet_netnum" {
    type=number
}

variable "route_cidr" {
    type=string
}

variable "route_gateway_id" {
    type=string
}