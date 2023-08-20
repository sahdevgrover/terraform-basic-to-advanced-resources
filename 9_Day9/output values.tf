provider "aws" {
  region = "ap-south-1"
}

resource "aws_eip" "lb" {
  domain = "vpc"
}

output "public-ip" {
  value = aws_eip.lb.public_ip
 /*
 The attribute "public_ip" has been declared,
 so you will only receive that specific attribute instead of
 obtaining all the attributes of the elastic IP.
 */
}