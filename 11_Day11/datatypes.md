# iam_user.tf
```
provider "aws" {
  region     = "ap-south-1"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_iam_user" "lb" {
  name = var.user-number
  path = "/system/"
}
```
# elb.tf
```
provider "aws" {
  region     = "ap-south-1"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_elb" "test-elb" {
  name               = var.elb_name
  availability_zones = var.az

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  cross_zone_load_balancing   = true
  idle_timeout                = var.timeout
  connection_draining         = true
  connection_draining_timeout = var.timeout

  tags = {
    Name = "my-demo-elb"
  }
}
```
## Variables.tf
```
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
```

## terraform.tfvars

```
elb_name="myelb"
timeout="400"
az=["ap-south-1a","ap-south-1b"]
```
#### if you don't create terraform.tfvars file, then on running terraform plan or terraform apply command it will automatically ask you the required fields to fill.
