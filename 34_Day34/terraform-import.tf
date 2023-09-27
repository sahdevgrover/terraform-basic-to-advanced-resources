provider "aws" {
  region  = "us-east-1"
}

# Use Terraform import command to import the resource

import {
  to = aws_security_group.demosg
  id = "sg-005ee210ab518fcb4"
}