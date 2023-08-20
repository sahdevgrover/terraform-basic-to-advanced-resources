# Digital Ocean Provider (Partner Tier)

https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs

## firstec2.tf
```
provider "aws" {
  region     = "ap-south-1"
  access_key = "USE-YOUR-ACCESS-KEY-HERE"
  secret_key = "USE-YOUR-SECRET-KEY-HERE"
}

resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"
}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
```