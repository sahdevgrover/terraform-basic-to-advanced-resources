# CREATING AN EC2 INSTANCE BY DECLARING FUNCTIONS IN THIS CONFIGURATION FILE
provider "aws" {
  region = var.region
}

locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  # here used two functions: formatdate and timestamp
}

resource "aws_key_pair" "loginkey" {
  key_name   = "login-key"
  public_key = file("${path.module}/myredhatkey.pem")


  # file function <<  it reads the content of a file at a given path and returns to it as string.
  # Remember, you should have you own key in your local directory.
}

resource "aws_instance" "app-dev" {
  ami           = lookup(var.ami, var.region) //  lookup function: retrieves the value from a list
  instance_type = "t2.micro"
  key_name      = aws_key_pair.loginkey.key_name
  count         = 2

  tags = {
    Name = element(var.tags, count.index) // element function:  retrieves the single value from the list
  }
}

output "timestamp" {
  value = local.time
}