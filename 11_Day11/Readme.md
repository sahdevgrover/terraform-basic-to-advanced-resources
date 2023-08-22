🔖 This is Day 11 of learning Terraform (Infrastructure as a Code - IaaC).

Let's get started! 🔰

🚀 DATA TYPES FOR VARIABLES

✔️ The argument in a variable block allows you to restrict the type of value that will be accepted as the value for a variable.

🔖 For example:

variable "image_id"
{
type = string
}

✅ Note: If no type constraint is set, a value of any type is accepted.

To better understand this concept, let's look at some use cases.

✅ Suppose any resource that an employee creates should have a name in the format of an identification number only.

🔖 Consider the following code:

variables.tf file has :

variable "instance_name" {}

In this case, the instance_name is undefined, as you can see.

🔖 Additionally, the terraform.tfvars file has :

instance_name = "sahdev-123"

✔️ Here, the value for instance_name is not an identification number.

✔️ When you run a terraform plan, you will get an error.

🔖 Now, let's improve the above code to make it work correctly:

variables.tf file now contains:

variable "instance_name"
{
type = number
}

And similarly, the terraform.tfvars file contains:

instance_name = "123"

✔️ This time it will work and will not throw any errors when we run the command because we have explicitly defined the type as a number.

✅ So, we have concluded that specifying the type in the variable is very useful.

🚀 Now, let's see the types of data types:

✅ string - a sequence of Unicode characters (e.g., "helloworld").

✅ list - a sequential list of variables identified by their position, starting with 0 always (e.g., ["bengaluru", "delhi"]).

🔖 (Note: list is the same as an array.)

✅ map - a group of variables identified by named labels (e.g., { name = "sahdev", age = 20 }).

✅ number - this one is quite self-explanatory (e.g., 1996, which happens to be my lucky number, you know!😄).

That's it for the data types!

🔖Points to remember:

✅ variables.tf file acts as a reference point.

✅ Always explicitly define the types for each variable.
