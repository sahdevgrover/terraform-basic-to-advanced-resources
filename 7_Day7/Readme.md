🔖 This is Day 7 of learning Terraform (Infrastructure as a Code - IaaC).

So, let's get started! 🔰

🚀 PROVIDER ARCHITECTURE

🔖 Understand with an easy illustration

✔️ When you create a resource in Terraform, such as defining an EC2 instance in a "do.droplet.tf" file and executing terraform apply, Terraform utilizes underlying provider plugins to interact with the cloud provider-in this case, DigitalOcean.

🔖🔖 Provide plugins - Act like a translator, convert what you wrote in a terraform file into the right commands that the provider understands.

✔️ The provider plugin is responsible for translating the Terraform configuration into API calls to the cloud provider.


🚀 EXPLICIT PROVIDER VERSIONING

✔️ Providers are released separately from Terraform itself, which means they have different version numbers. During terraform init, if the version argument is not specified, the most recent provider version will be downloaded by default.

✔️ However, for production use, it's crucial to constrain acceptable provider versions to prevent automatic installation of new versions with breaking changes.

🔖 You can specify the version of a provider in multiple ways:


✅ >=1.0 : Any version equal to or greater than 1.0.

✅ <=1.0 : Any version equal to or less than 1.0.

✅ ~>2.0 : Any version in the 2.X range (2.0, 2.1, 2.2, etc.).

✅ >=2.10,<=2.30 : Any version between 2.10 and 2.30.

🚀 DEPENDENCY LOCK🔒 FILE
(It's like a sticky note on the provider version)

✔️ Terraform's dependency lock file allows you to lock to a specific version of the provider.

✔️ If a particular provider version is recorded in the lock file, Terraform will always use that version for installation, even if newer versions are available.

✔️ To override this behavior, you can use the -upgrade option with terraform init.

🚀 TERRAFORM REFRESH

✔️ The terraform refresh command checks the latest state of your infrastructure and updates the state file accordingly.

✔️ Usually, you don't need to manually run terraform refresh because Terraform automatically performs the same refreshing action as part of creating a plan in both terraform plan and terraform apply.

⚠️ NOTE : Manually running terraform refresh can be dangerous as it may delete your .tf state file.
