terraform {
  backend "s3" {
    bucket = "my-sahdev-terraform-s3-backend" #your bucket name which you have created
    key    = "network/demo.tfstate"  # specify the folder.
    region = "eu-west-1" # go to properties in s3 bucket to view the region.

    dynamodb_table = "terraform-state-locking"
  }
}

resource "time_sleep" "wait_300_seconds" {
  create_duration = "150s"
}