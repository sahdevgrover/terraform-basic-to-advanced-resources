resource "aws_instance" "myinstance" {
  ami ="ami-0d13e3e640877b0b9"
  instance_type = var.instance_type # value of var.instance_type is expected to be provided via a variable.
}