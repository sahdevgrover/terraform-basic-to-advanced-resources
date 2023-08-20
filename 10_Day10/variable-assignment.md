# terraform.tf file (Creation of resource)
```
provider "aws" {
  region     = "ap-south-1"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a6447555506f"
   instance_type = "t2.micro"
}
```
## APPROACHES FOR VARIABLE ASSIGNMENT
### variables.tf
```
variable "instancetype" {
  default = "t2.micro"
}
```

### custom.tfvars
```
instancetype="t2.large"
```

### terraform.tfvars
```
instancetype="t2.large"
```

## CLI Commands

```
terraform plan -var="instancetype=t2.small"
terraform plan -var-file="custom.tfvars"
```

## Environment Variables:

### Windows Approach:

```
setx TF_VAR_instancetype t2.large
```

### Linux / MAC Approach

```
export TF_VAR_instancetype="t2.medium"
echo $TF_VAR
```
