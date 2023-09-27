provider "aws" {
  region  = "us-east-1"
}

import {
  to = aws_security_group.demosg
  id = "sg-005ee210ab518fcb4"
}