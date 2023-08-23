resource "aws_security_group" "ec2-sg" {   # creating security-group for our ec2 instance
  name = "my-ec2-sg"                              # tag/name
  description = "Security group for EC2 instance" # more info

  ingress {                                       # inbound traffic
    description = "Allow Inbound from Secret Application"
    from_port   = 8433
    to_port     = 8433
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {                                        # outbound traffic
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

/*
 AS WE KNOW THAT ONCE WHEN WE CREATE A SECURITY GROUP WE AUTOMATICALLY GET THE ID OF THAT
 PARTICULAR SECURITY GROUP.
*/