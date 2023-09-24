terraform {
  backend "s3" {
    bucket = "my-sahdev-terraform-s3-backend"
    key    = "network/eip.tfstate"
    region = "eu-west-1"
  }
}