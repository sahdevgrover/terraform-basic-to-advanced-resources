terraform {
  backend "s3" {
    bucket = "my-sahdev-terraform-s3-backend" # your bucket name which you have created
    key    = "network/terraform.tfstate"  # specify the folder.
    region = "eu-west-1" # go to properties in s3 bucket to view the region.
  }
}
