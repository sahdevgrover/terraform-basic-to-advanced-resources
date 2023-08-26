# Terraform AWS EC2 Instance Creation

This Terraform configuration demonstrates how to create EC2 instances on AWS using the HashiCorp Configuration Language (HCL). 

The code in this configuration file will provision EC2 instances along with an SSH key pair for secure access.

## Configuration Explained (function.tf)

### Local Variables

In the beginning of the configuration, we define a local variable named time to capture the current timestamp. This variable is utilized later in the code to assign a timestamp to the outputs.

### AWS Key Pair Resource

The aws_key_pair resource block creates an SSH key pair that will be associated with the EC2 instances. 

The key pair is named login-key, and the public key is read from a file named myredhatkey.pem located in the same directory as this configuration file.

### AWS Instance Resource

The aws_instance resource block defines the EC2 instances we want to create. 

We've set the following attributes:

#### AMI:

The Amazon Machine Image (AMI) that the instance will be based on. We use the lookup function to retrieve the appropriate AMI ID from the var.ami list based on the selected var.region.

#### Instance Type: 

The instance type specifies the hardware resources for the instance. In this case, we're using the t2.micro instance type.

#### Key Name: 

The SSH key pair name, which is set to the key_name of the aws_key_pair.loginkey.

#### Count: 

This attribute specifies the number of instances to create. We've set it to 2 instances.

#### Tags:

We've used the tags block to assign a name tag to each EC2 instance. 

The element function retrieves values from the var.tags list based on the instance index (0 or 1 in this case), and each instance is tagged with the corresponding name.

### Clone this repository to your local machine.

* Navigate to the directory containing this configuration file.

* Run terraform init to initialize the Terraform configuration.

* Run terraform apply to create the specified resources.

When prompted, review the planned changes and confirm by typing yes.

### Outputs

After successful execution, you'll see the current timestamp printed as an output.

