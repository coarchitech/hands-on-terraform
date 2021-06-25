variable "prefix" {
  type    = string
  default = "coarchitech"
}

variable "location" {
  type    = string
  default = "westus"
}

variable "environment" {
  type    = string
  default = "dev"
}

resource "random_string" "storage_name" {
  length  = 24
  upper   = false
  lower   = true
  number  = true
  special = false
}
