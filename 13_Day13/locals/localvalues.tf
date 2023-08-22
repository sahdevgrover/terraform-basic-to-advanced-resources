# local <<  define it one time and use it multiple times
locals {
  common_tags = {
    Owner   = "DevOps Team"
    service = "backend"
  }
}

# these now can be use multiple times as this is a part of a locals values.

resource "aws_instance" "app-dev" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
  tags          = local.common_tags # inherit the tags(owner + service)
}

resource "aws_instance" "db-dev" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.small"
  tags          = local.common_tags # inherit the tags(owner + service)
}

resource "aws_ebs_volume" "db_ebs" {
  availability_zone = "us-west-2a"
  size              = 8
  tags              = local.common_tags # inherit the tags(owner + service)
}