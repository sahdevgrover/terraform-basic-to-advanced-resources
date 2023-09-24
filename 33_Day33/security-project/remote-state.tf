# terraform-remote_state

data "terraform_remote_state" "eip" {
  backend = "s3"
  config = {
     bucket = "my-sahdev-terraform-s3-backend"
     key    = "network/eip.tfstate"
     region = "eu-west-1"
    }
  }