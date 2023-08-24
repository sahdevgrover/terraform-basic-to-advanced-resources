provider "aws" {               # provider block (aws)
  region = "ap-south-1"        # Specify the region in which you would like to create your resources.
}

module "sg_module" {
  source = "./sg"              # path to your module directory
}

module "ec2-web" {
  source    = "./ec2"          # path to your module directory
  ec2_sg_id = module.sg_module.sg-id   # module.<module name>.<output name>
}

output "ec2_sg_id" {
  value = module.sg_module.sg-id       # module.<module name>.<output name>
}
output "ec2_instance_id" {
  value = module.ec2-web.ec2_instance_id
}
