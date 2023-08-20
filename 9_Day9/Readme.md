🔖 This is Day 9 of learning Terraform (Infrastructure as a Code - IaaC).

So, let's get started! 🔰

First and foremost, remember to remove or destroy any resources used during the practical hands-on session before moving on to the next one.

Command - terraform destroy (i.e for all resources.)

🚀 OUTPUT VALUES

Now, let's talk about the output values in Terraform.

✔️ Output values are essential because they provide information about your infrastructure directly on the command line.

✔️ They expose this information for other Terraform configurations to use.

🔖 For example, when you create an EC2 instance and want to know its public IP address, Terraform can fetch that information and display it on your screen.

✔️ This saves you from having to manually log in to your provider's environment or AWS console.

✅ An important point to note is that the output values from one project (let's call it Project A) can be referenced and used in another project (Project B) as well. This means that you can fetch the output from one place and use it in another, making your configuration more manageable.

🚀 TERRAFORM VARIABLE

Now, let's discuss the significance of variables in Terraform.

✔️ Variables are crucial because they help in easy configuration and reduce repetitive work.

✔️ Instead of hardcoding static values (like IP addresses) throughout your configuration, variables act as a central source from which you can import these values.

🔖 For example, instead of having multiple IP addresses like 116.78.89.89 and 116.78.50.60 hardcoded in your configuration file, you can use variables to store these values. So, you define a variable (let's call it var.source), and then you can use this variable wherever you need these IP addresses in your configuration.

🚀 There are multiple approaches to assigning variables in Terraform, including:

✅ Environment variables
✅ Command line flags
✅ Values from a file
✅ Variable defaults