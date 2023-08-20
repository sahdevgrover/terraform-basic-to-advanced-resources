🔖 This is Day 6 of learning Terraform (Infrastructure as a Code - IaaC).

So, let's get started! 🔰

🚀 Desired State & Current State in Terraform

✔️ Terraform's primary function is to create, modify, and destroy infrastructure resources to match the desired state described in a Terraform configuration.


✅ The "desired state" refers to the configuration you define in the Terraform file.

✅ The "current state" represents the actual state of resources deployed in the provider's environment.

📌 Let's Simplify this more with real-life example of AWS.

Suppose you've configured an EC2 instance in a Terraform file and applied the configuration.

Terraform creates the EC2 instance, and when you check your AWS console, you see that the EC2 instance is running.

🔖 In this scenario:

✅ The EC2 resource defined in the Terraform file represents the desired state.

✅ The running EC2 instance in AWS represents the current state.

✔️ However, it's essential to note that the desired state and the current state will not always match.

But,

✔️ Manual modifications made to a resource from the provider's console can cause a mismatch between the desired and actual states.

✔️ Fortunately, Terraform is designed to converge the current state towards the desired state.

✔️ If someone manually changes the attributes of the EC2 instance in AWS, running terraform apply Command again will bring the EC2 instance back to the desired state specified in the Terraform configuration.

Run this command - terraform apply.

✔️ Terraform accomplishes this by making the necessary changes to the resource so that it aligns with the defined desired state.

🔖 Terraform - Hey! You, Yes you, get back to your place .

Sadly, the current state is now getting back to its desired state.

( Appreciate the terraform 😄)

✔️ This way, Terraform ensures that the desired infrastructure state is maintained.

Once again,

✅ This was the whole overview of Desired State and current state in Terraform, with suitable examples & ofc Meme.