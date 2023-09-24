// this is the resource block of aws_instance which we are creating in our AWS env.
resource "aws_instance" "myfirstEc2" {
    ami = "ami-03a6eaae9938c858c"
    instance_type = "t2.micro"
}

resource "aws_security_group" "allow_tls" {
     name = "terraform-variables"

  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }

  ingress {
    from_port        = 53
    to_port          = 53
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }

}