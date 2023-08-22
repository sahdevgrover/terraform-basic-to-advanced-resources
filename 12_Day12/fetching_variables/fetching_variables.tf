provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "mye_c2" {
  ami = "ami-082b5a644766e0e6f"
   instance_type = var.list[1]  // here, you can either use list-type variable or map-type variable.
}

variable "list"                // type is list.
{
  type    = list(any)
  default = ["m5.large", "m5.xlarge", "t2.medium"]
}

variable "types" {                 // type is map
  type = map(any)
  default = {
    us-east-1  = "t2.micro"
    us-west-2  = "t2.nano"
    ap-south-1 = "t2.small"
  }
}

/*
Syntax for the both method :

1. instance_type = var.list[0]
(this is, we are fetching the values associated with map type variables.)

2. instance_type = var.types["ap-south-1"]
(this is, we are fetching the values associated with list type variables.)