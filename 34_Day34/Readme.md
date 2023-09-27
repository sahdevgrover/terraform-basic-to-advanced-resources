# Terraform Import Implementation Guide

In this guide, 

We will walk through the process of importing existing AWS resources into Terraform and demonstrate how to leverage the automatic code generation feature. 

**Follow these steps to import an AWS Security Group resource.**

## CREATION OF SG MANUALLY

* Creating an AWS Security Group Manually, start by accessing the AWS Management Console. 

* You can choose any region based on your preferences.

* Within the EC2 service, create a security group, also known as a firewall. Name it, for example, "manually-created-sg", and provide a brief description like "manual."

### Configure the inbound rules for the security group:

* Create a rule for port 80, allowing traffic from "0.0.0.0/0." Describe it as "allow Http traffic."

* Add another rule for port 443, permitting traffic from "0.0.0.0/0." Describe it as "allow https traffic."

* Establish a rule for port 22, allowing traffic from a specific CIDR block, such as "176.0.0.0" Give it a description like "allow from private network."

### Configure the outbound rules for sg:

* Remain as default, all traffic!

##### **Create the security group with these three inbound rules and one outbound rule.**

## Importing the Security Group into Terraform

To import the manually created security group into Terraform, follow these steps:

### Configuration file: terraform-import.tf
```
provider "aws" {
  region  = "us-east-1"
}


import {
  to = aws_security_group.demosg  # <name_of_the_resource><local_resource_name>
  id = "sg-005ee210ab518fcb4"   # copied the sg id from sg you have created manually on aws
}
```
#### Remember:

* Ensure you set the correct AWS region in the provider block according to your setup.

* Retrieve the ID of the manually created security group from the AWS Management Console.

* Save the changes to the configuration file.

### Creation of demosg.tf file

Generate the Terraform configuration for the imported resource by running the following commands:

Initialisation:
```
terraform init
```
Save the configuration file:
```
terraform plan -generate-config-out="demosg.tf" 
```
Now, you can see that the terraform has automatically generated the file having the security group resource.

![Screenshot 2023-09-27 180337](https://github.com/sahdevgrover/terraform-basic-to-advanced-resources/assets/132704247/fb2a5a39-5339-4725-8268-de50cb75520a)

![Screenshot 2023-09-27 180355](https://github.com/sahdevgrover/terraform-basic-to-advanced-resources/assets/132704247/f8ae5b85-7c8a-4adb-b830-4254a4cde0ef)


After generating the plan, apply it to create the state file and import the resource:
```
terraform apply -auto-approve
```
![Screenshot 2023-09-27 180459](https://github.com/sahdevgrover/terraform-basic-to-advanced-resources/assets/132704247/1f844507-5821-43d6-b17b-f5a7668175a9)


State file generated:

![Screenshot 2023-09-27 180510](https://github.com/sahdevgrover/terraform-basic-to-advanced-resources/assets/132704247/f1a21ea1-47d1-4283-8b47-285d6583266c)


### Verifying Terraform Management

To verify that Terraform is successfully managing the resource, 

you can make changes in the imports.tf configuration file, such as modifying the inbound rules.

Apply the changes once again using Terraform:
```
terraform apply -auto-approve
```

**Check the AWS Management Console to see the updated rules applied to the security group.**

Congratulations! 

You have successfully imported a manually created AWS resource into Terraform and can now manage it using Terraform's infrastructure as code approach.

This concludes our Terraform Import Implementation Guide.

Feel free to explore the provided code examples and adapt them to your specific requirements. 

If you have any questions or encounter issues, please don't hesitate to reach out.

LinkedIn Profile: https://www.linkedin.com/in/sahdevgrover/

**Author: Sahdev Grover**
