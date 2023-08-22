🔖 This is Day 13 of learning Terraform (Infrastructure as a Code - IaaC).

So, let's get started! 🔰

🚀 Conditional Expressions

✔️ The conditional expression uses the value of a bool expression to select one of two values.

🔖 Syntax of the conditional expression:

condition ? true_val : false_val

Here,

✅ If the condition is true, then the result is true_val.

✅ If the condition is false, then the result is false_val.

(This is self-explanatory.)

🔖 Let's understand this with suitable examples.

✔️ Assume there are two resource blocks as part of the Terraform configuration. Depending on the variable value, one of the resource blocks will run.

Here,

✅ If the is-test (variable) is true, then the dev block will run.

✅ If the is-test (variable) is false, then the prod block will run.

🚀 Now, let's talk about local values.

✔️ A local value assigns a name to an expression, allowing it to be used multiple times within a module without repeating it.

How do we define a local value? 🤔

🔖 Let's see:

locals
{
common_tags =
{
owner = "Devops Team"
service = "backend"
}
}

✔️ So, these two resource blocks will be created, like this:

✅ Resource 1:

resource "aws_instance" "ab_dev"
{
ami = "ami-123"
instance_type = "t2.micro"
tags = local.common_tags
}

✅ Resource 2:

resource "aws_ebs_volume" "bd_ebs"
{
availability_zone = "ap-south-1"
size = 8
tags = local.common_tags
}

✔️ As these resources get created, they will inherit both the key-value pairs as part of the tags.

🔖 In short:

✅ Define it  -  one time.

✅ Use it  -  multiple times.

✔️ Local values can be used for multiple different use-cases, like having a conditional expression.

🔖 For example:

locals
{
name_prefix = "${var.name != " " ? var.name : var.default}"
}

📌 Important things to remember:

✅ Local values can be helpful to avoid repeating the same values or expressions multiple times in a configuration.

✅ If overused, they can also make a configuration hard to read for future maintainers by hiding the actual values used.