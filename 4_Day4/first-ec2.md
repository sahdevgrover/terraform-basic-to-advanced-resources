Documentation Referred:
https://registry.terraform.io/

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

first_ec2.tf
`provider "aws" {
  region     = "us-east-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}`

`resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"
}`

Commands:
`terraform init
terraform plan
terraform apply`