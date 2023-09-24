# Terraform Remote State Configuration:

## Configuration file : remote-state.tf

```
data "terraform_remote_state" "eip" {
  backend = "s3"
  config = {
     bucket = "my-sahdev-terraform-s3-backend"
     key    = "network/eip.tfstate"
     region = "eu-west-1"
    }
  }
```
The code begins with a Terraform data block named "terraform_remote_state" called "eip." 

This block is used to fetch the remote state data from a previously deployed Terraform configuration. 

It typically points to a **remote backend** where the state of another Terraform configuration is stored. 

In this case, it's configured to fetch data from an **S3 bucket.**

* **backend:** Specifies that the remote state data is stored in an S3 bucket.


* config: A configuration block containing the details of the S3 bucket where the remote state is stored, including the **bucket name**, **key** (path to the state file), and **AWS region**.

# AWS Security Group Resource Configuration

```
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${data.terraform_remote_state.eip.outputs.eip_addr}/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}
```

The main part of the code defines an AWS security group resource named **"allow_tls."** 

Security groups are used to control inbound and outbound traffic to AWS resources.

* **name and description:** These are self-explanatory and set the name and description of the security group.


* **ingress Block**: This block specifies the inbound rules for allowing traffic. In this case, it allows incoming traffic on port 443 (TLS/SSL) from a specific CIDR block.


* **description**: A description of the rule.


* **from_port and to_port**: The range of port numbers (443 in this case) that the rule applies to.


* **protocol**: The protocol (TCP in this case) for which the rule applies.


* **cidr_blocks**: A list of CIDR blocks that define the source IP addresses allowed to connect. 

The CIDR block here is retrieved from the remote state "eip" using **${data.terraform_remote_state.eip.outputs.eip_addr}/32**, which means only a specific IP address (the Elastic IP address from the remote state) is allowed to connect on port 443.


* **egress Block:** This block specifies the outbound rules. In this case, it allows all outbound traffic (0.0.0.0/0 and ::/0 represent all IP addresses for IPv4 and IPv6, respectively), which means any outgoing traffic is allowed.

This code essentially creates an AWS security group that allows incoming TLS traffic on port 443 from a specific IP address (retrieved from the remote state) and allows all outbound traffic. 

The remote state is fetched from an S3 bucket, and it's that the remote state contains information about an Elastic IP address (eip_addr) that is used for the ingress rule.

