🔖 This is Day 5 of learning Terraform (Infrastructure as a code - IaaC).

📌 TERRAFORM COMMANDS

✅ terraform init

This command is used to initialize a new or existing Terraform project. When applied, it automatically downloads the required provider plugins (as defined in the configuration) and saves them locally in a .terraform directory.

✅ terraform plan

This command shows what resources will be created, modified, or destroyed based on the current configuration.

It performs a dry run and displays the changes without actually creating or modifying any resources.

✅ terraform apply

This command is used to apply the changes specified in the Terraform configuration and create or modify the resources accordingly. It makes the changes instantly.

✅ So, the hierarchy is

terraform init -> terraform plan -> terraform apply.

📌 DESTROYING ALL THE RESOURCES

✅ terraform destroy

This command is used to destroy all the resources that were created by Terraform. It will remove the infrastructure components specified in the configuration.

📌 DESTROYING SOME OF THE RESOURCES

✅ terraform destroy -target

If you want to destroy only specific resources and not all of them, you can use the -target option followed by the resource type and local resource name.

🔖 For example:

✔️ terraform destroy -target aws_instance.myec2

This will destroy only the resource named myec2 of type aws_instance.

📌 TERRAFORM STATE FILE

The Terraform state file is crucial for managing the infrastructure. It stores the current state of the infrastructure that Terraform is managing.

The state file allows Terraform to map real-world resources to the configuration.

🔖 For example, if you create an EC2 instance using Terraform, the state file will contain all the information about that instance, allowing Terraform to track its state.

✔️✔️ It is essential to avoid touching or changing anything directly in the state file. Instead, you should manage the infrastructure through Terraform commands (plan, apply, destroy) to ensure the state file remains accurate and up-to-date.

➡️➡️ Note: If you remove a resource from the Terraform configuration (e.g., an EC2 instance), the associated state file entry for that resource will also be removed.