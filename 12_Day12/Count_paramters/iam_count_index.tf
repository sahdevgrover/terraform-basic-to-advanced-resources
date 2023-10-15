
/*
This is the appropriate way to fetch the values of list variable
and iterate it according to the names specified in it.
*/
resource "aws_iam_user" "lb" {
  name = var.elb_name[count.index]
  path = "/system/"
  count = length(var.elb_name) # most appropriate way
}

variable "elb_name" {
  type = list(string)
  default = ["dev-loadbalancer" , "stage-loadbalancer" , "prod-loadbalancer"]
}
