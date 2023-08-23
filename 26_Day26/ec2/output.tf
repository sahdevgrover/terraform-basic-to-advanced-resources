output "ec2_instance_id" {         # output block that helps to print the o/p on command line
  value = aws_instance.web.id      # resource-name.local-name.identifier(id)
}