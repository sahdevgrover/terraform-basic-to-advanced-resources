
/*
This is the appropriate way to fetch the values of list variable
and iterate it according to the names specified in it.
*/
resource "aws_iam_user" "lb" {
  name = var.elb_name[count.index]
  count = 3
  path = "/system/"
}

variable "elb_name" {
  type = list
  default = ["dev-loadbalancer" , "stage-loadbalancer" , "prod-loadbalancer"]
}