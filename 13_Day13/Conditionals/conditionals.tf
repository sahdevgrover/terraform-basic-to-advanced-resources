
// create a variable
variable "istest" {
}

resource "aws_instance" "dev" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"

  // add a count parameter as true if count is true then value associated with count is 1 else 0
  count = var.istest == true ? 2 : 0
  // here var.istest == true, this part is condition.
}

resource "aws_instance" "prod" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.large"

  count = var.istest == false ? 4 : 0
}