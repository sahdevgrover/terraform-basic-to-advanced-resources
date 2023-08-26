
provider "aws" {
  region = "ap-southeast-1"
}
// data block

data "aws_ami" "app_ami" {
  most_recent = true       // the most recent ami id
  owners      = ["amazon"] // owned by amazon


  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"] // we are using ami-amz-linux2 here
  }
}

resource "aws_instance" "instance-1" {
  ami           = data.aws_ami.app_ami.id // referencing to the data
  instance_type = "t2.micro"
}