resource "aws_instance" "web" {               # creating ec2 instance
  ami           = "ami-0da59f1af71ea4ad2"     # Specify your AMI ID as per the region
  instance_type = "t2.large"                  # instance_type
  vpc_security_group_ids = [var.ec2_sg_id]    # reference to the variable which holds the id of sg
}





