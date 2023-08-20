//provider authentication
provider "aws" {
    region = "ap-south-1"
    access_key = "USE-YOUR-ACCESS-KEY-hERE"
    secret_key = "USE-YOUR-SECRET-KEY-HERE"
}

// authorization given to terraform
// this is the resource block of aws_instance which we are creating in AWS env.

resource "aws_instance" "myfirstEc2" {
    ami = "ami-0d13e3e640877b0b9"
    instance_type = "t2.micro"
}