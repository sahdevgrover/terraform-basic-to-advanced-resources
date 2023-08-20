# Documentation Referred:

https://registry.terraform.io/

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

# first_ec2.tf
 
```
provider "aws" {
  region     = "ap-south-1"
  access_key = "USE-YOUR-ACCESS-KEY-HERE"
  secret_key = "USE-YOUR-SECRET-KEY-HERE"
}
```
```
resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"
}
```

# Commands:
     
```
terraform init
terraform plan
terraform apply
```


