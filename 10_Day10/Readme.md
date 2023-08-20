🔖 This is Day 10 of learning Terraform (Infrastructure as a Code - IaaC).

So, let's get started! 🔰

🚀 MULTIPLE APPROACHES FOR ASSIGNING VARIABLES

✔️ In Terraform, variables are essential for creating dynamic and reusable configurations.

✅ Environment Variables

✔️ Environment variables are values set in the environment where Terraform runs.

✔️ You can reference these variables in your Terraform configurations using the

var. prefix.

✔️ This method is useful for keeping sensitive or provider-specific information separate from your configuration files.

🔖 For - example, as many times we have seen that users may exposes their access key and secret acess by pushing their code to public github repository, it is like they unknowingly sharing their personal information on social media,

you can relate this with that :))

Anyways, you can set an environment variable like this:

Setx TF_VAR_my_variable="my_value"

here,

🔖 setx Commands for windows.

🔖TF_VAR  - like the syntax

🔖 my_variable  -  can be your resource name like - instance type.

🔖 my_value  -  you can specified any value like t2.large in this case.

And then use it in your Terraform configuration like this

variable "my_variable" {
 type = string
 default = var.my_variable
}

✅ Command Line Flags

✔️ Terraform allows you to pass variables directly via the command line when executing Terraform commands.

✔️ This is helpful for overriding specific values without modifying the configuration files.

✔️ Variables provided through command line flags take precedence over other variable assignments.

🔖 For example, you can set a variable using a command line flag like this :

terraform apply -var="my_variable=my_value"

✅ Values from a File

✔️ You can define variables in a separate

.tfvars file

in key-value format. Then, you can pass this file to Terraform using the -var-file flag.

🔖 For example, create a variables.tfvars file:

my_variable = "my_value"
(instance_type = t2.micro)

And then use it in Terraform:

terraform apply -var-file="variables.tfvars"

✅ Variable Defaults

✔️ Terraform allows you to set default values for variables directly in the configuration files.

✔️ If a value is not explicitly set through any of the previous methods (environment variables, command line flags, or value files), the variable will use its default value.

For example:

variable "my_variable" {
 type = string
 default = "default_value"
}

✅ Conclusion

Using these variable assignment approaches, you can create flexible Terraform projects that are easy to adapt to different environments without hardcoding values into the configuration files. This enables you to switch between various settings and configurations as needed.