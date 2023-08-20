🔖 This is Day 4 of learning Terraform (Infrastructure as Code - IaaC).

So, let's get started! 🔰

📌 FIRST VIRTUAL MACHINE THROUGH TERRAFORM

🔖 EC2 stands for Elastic Compute Cloud.

✔️ In short, it's a virtual server in the cloud that launches in AWS.

The important thing is that cloud providers offer multiple regions in which we can create our resources.

✔️ So here also, you need to decide the region in which Terraform would create the resources for you (you have to mention it in your code).

📌 Let's see the configuration of a virtual machine. It consists of:

✅ CPU
✅ Memory
✅ Storage
✅ Operating System

🔖 While creating a virtual machine through Terraform, you need to define these.

✔️✔️ Note: Important to remember that each region has its own AMI Id.

📌 Now, let's talk about the Providers and Resources.

✔️ As we have already discussed in my previous Terraform learning series, Terraform supports multiple providers like AWS, GCP, Azure, etc.

📌 Provider plugins :

✔️ What is a plugin? - It is a software addition to give customization.

✔️ The provider is the plugin that lets Terraform manage an external API.

✔️ When we run terraform init (it's a command in Terraform), the plugins required for the provider are automatically downloaded and saved locally to the .terraform directory.


✔️✔️ Note: Each provider has its own appropriate plugin.

📌 Resource :

✔️ It describes the information of your infrastructure objects that you will create in your desired provider.

🔖 Example -  aws_instance, aws_alb, aws_iam_user (Attaching the example below, please have a look for better understanding)

📌 Resources block :

✔️ It describes one or more infrastructure objects. A resource block declares a resource of a given type ("aws_instance") with a given local name ("myfirstEc2").



✔️ You can assign any name, i.e., your local name to the resource.

✔️✔️ Resource type and name together act as an identifier for a given resource, and so it must be unique.

✅ Check out the link of a AWS documentation in the terraform Registry.
https://registry.terraform.io/providers/hashicorp/aws/latest/docs