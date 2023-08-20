AWS Documentation Referenced:
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

aws-provider-config.tf

```
provider "aws" {
  region     = "ap=south-1"
}
```
```
resource "aws_iam_user" "demouser" {
    name = "sahdev-demo-user"
}
```

CLI Commands Used:
````
terraform apply -auto-approve
terraform destroy -auto-approve
````

AWS CLI commands Used:

```
aws configure
```