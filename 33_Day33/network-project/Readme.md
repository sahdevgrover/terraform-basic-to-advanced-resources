# Resource Block for AWS Elastic IP (aws_eip):

```
resource "aws_eip" "lb" {
  vpc = true
}
```

In this block, we are defining an AWS Elastic IP address resource named "lb" using Terraform's aws_eip resource type. 

This block is used to create an Elastic IP address. 

The vpc = true line specifies that this Elastic IP address will be associated with a Virtual Private Cloud (VPC), which is the modern networking architecture for AWS.

## Output Block for Elastic IP Address:

```
output "eip_addr" {
  value = aws_eip.lb.public_ip
}
```

In this block, you are defining an output named "eip_addr." Outputs in Terraform are used to extract and display information about the resources created during the execution of a Terraform plan.

**value = aws_eip.lb.public_ip** 

It indicates that the output will display the public IP address associated with the Elastic IP resource created earlier. 

The aws_eip.lb references the Elastic IP resource named "lb," and .public_ip accesses the public IP address associated with it.


### So, in summary, this Terraform code does the following:

_✅ creates an AWS Elastic IP address within a VPC._

_✅ It defines an output variable named "eip_addr" that will capture and display the public IP address associated with the Elastic IP resource when Terraform is applied._

**After running terraform apply on this code, you can access the created Elastic IP address using the output variable "eip_addr" to use it in other parts of your Terraform configuration or to display it as needed.**

