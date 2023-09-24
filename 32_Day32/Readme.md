# 𝑨𝒅𝒗𝒂𝒏𝒄𝒆𝒅 𝑪𝒐𝒏𝒄𝒆𝒑𝒕𝒔 𝒐𝒇 𝑻𝒆𝒓𝒓𝒂𝒇𝒐𝒓𝒎𝒊𝒏𝒈!!
The terraform Configuration file has 2 resources:

EC2

SECURITY GROUP

Today,

We'll explore one of the most vital aspects of **𝐓𝐞𝐫𝐫𝐚𝐟𝐨𝐫𝐦 - 𝐦𝐚𝐧𝐚𝐠𝐢𝐧𝐠 𝐢𝐭𝐬 𝐬𝐭𝐚𝐭𝐞.**

**𝐓𝐞𝐫𝐫𝐚𝐟𝐨𝐫𝐦 𝐬𝐭𝐚𝐭𝐞 𝐦𝐚𝐧𝐚𝐠𝐞𝐦𝐞𝐧𝐭** is the backbone of any successful infrastructure as a code (IaaC) project.

It's the key to maintaining order and ensuring the reliability of your infrastructure deployments.

These will not only assist you in your **𝐜𝐞𝐫𝐭𝐢𝐟𝐢𝐜𝐚𝐭𝐢𝐨𝐧 𝐣𝐨𝐮𝐫𝐧𝐞𝐲** but also prove valuable in **𝐫𝐞𝐚𝐥-𝐭𝐢𝐦𝐞 𝐰𝐨𝐫𝐤 𝐚𝐧𝐝 𝐩𝐫𝐨𝐣𝐞𝐜𝐭𝐬.**

I have also covered **𝐜𝐨𝐧𝐜𝐞𝐩𝐭𝐬 𝐨𝐟 𝐓𝐞𝐫𝐫𝐚𝐟𝐨𝐫𝐦 𝐟𝐫𝐨𝐦 𝐛𝐚𝐬𝐢𝐜 𝐭𝐨 𝐚𝐝𝐯𝐚𝐧𝐜𝐞𝐝**, which will be **𝐡𝐞𝐥𝐩𝐟𝐮𝐥 𝐢𝐧 𝐢𝐧𝐭𝐞𝐫𝐯𝐢𝐞𝐰𝐬**.

### Configuration file: ec2.tf
```
resource "aws_instance" "myfirstEc2" {
    ami = "ami-03a6eaae9938c858c"
    instance_type = "t2.micro"
}

resource "aws_security_group" "allow_tls" {
     name = "terraform-variables"

  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }

  ingress {
    from_port        = 53
    to_port          = 53
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }

}
```
## Terraform state management

Terraform provides a set of commands specifically designed for interacting with the state, ensuring that any changes are tracked and managed meticulously.

### Sub-Commands:

```
terraform state list
terraform state mv aws_instance.myfirstEc2 aws_instance.webserver 
terraform state pull 
terraform state push
terraform state rm aws_instance.example_instance
terraform state show aws_instance.webserver`
```

