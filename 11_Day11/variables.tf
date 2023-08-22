variable "user-number" {
  type = number
}

variable "elb_name" {
  type = string
}

variable "az" {
  type    = list(any)
  default = []
}

variable "timeout" {
  type = number
}