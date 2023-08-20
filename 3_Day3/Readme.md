🔖 This is Day 3 of learning Terraform (Infrastructure as a Code - IaaC).

So, let's get started! 🔰

✅✅Authentication and Authorization

🔖 Before we begin working on managing environments or infrastructure through Terraform, the first step is to understand authentication and authorization.

Here, I have taken AWS as the provider in my example.

✔️ When we provision infrastructure using Terraform, we need permission to access the AWS cloud.

AWS will request Terraform to authenticate itself, asking

"who are you?"

✔️ To draw a real-life analogy, it's like someone wanting to enter your house. If a stranger tries to enter, you would naturally deny them access.

However, if a friend or someone you know comes to your house, you would allow them in. But that's not the end of the story; just because you know the person doesn't mean they can do whatever they want in your home.

✔️ They need to ask permission from you to access certain things in your house. This concept of authorization determines what they can access.

✔️ In the context of infrastructure, when a user authenticates themselves and enters the AWS environment, they may want to access specific services or use resources in the infrastructure. For that, you, as the AWS account owner, need to grant them the necessary authorizations.

🔖To summarize:

✅ Authentication is the process of verifying a user's identity.

✅ Authorization is the process of verifying what they have access to.

📌Now, let's talk about Terraform.

✔️ Terraform needs access credentials with relevant permissions to create and manage the environment.

✔️ These access credentials would vary depending on the provider.
Providers like - AWS, GCP , Azure, Oracle Cloud infrastructure, Alibaba Cloud, kubernetes etc.

➡️ Access credentials are like - Usernames and Passwords 🔑


➡️ Permissions are like - Policies.

For example:

✅ In AWS, access credentials consist of an access key and a secret access key.



✅ In GitHub, these credentials are represented as tokens.

We'll also discuss the important commands used in Terraform to create resources.

✅ terraform init
✅ terraform plan
✅ terraform apply

