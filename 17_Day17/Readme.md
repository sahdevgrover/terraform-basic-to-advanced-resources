## Day 17

🔖 This is Day 17 of learning Terraform (Infrastructure as a Code - IaaC).

So, let's get started! 🔰

### 🚀 SPLAT EXPRESSION

✔️ In Terraform, the splat expression is a powerful syntax used to access all the elements of a list, map, or set within a resource or data block.

*✅ Represented by the [*] symbol.*

✔️ The splat expression allows you to pass multiple elements from a data structure as separate arguments to a resource or data block.

🔖 For example,

Consider the following code,

where we have a list variable
"subnets" containing subnet IDs, and we want to create multiple AWS instances in each subnet using
Terraform's aws_instance resource:
```
variable "subnets" {
type = list(string)
default = ["subnet-1a", "subnet-1b", "subnet-1c"]
}
```
```
resource "aws_instance" "example" {
ami = "ami-0c55b159cbfafe1f0"
instance_type = "t2.micro"
subnet_id = var.subnets[*]
}
```
In this example,

we use the splat expression

*var.subnets[*]*

to pass all the subnet IDs as separate arguments to the

subnet_id attribute of the aws_instance resource.

As a result, Terraform will create an EC2 instance in each of the specified subnets.

✔️ The splat expression is an elegant feature in Terraform that enables efficient and concise handling of collections of resources or data.

✔️ It eliminates the need for writing repetitive code when dealing with multiple elements within a list, map, or set.

### 🚀 TERRAFORM GRAPH 📈

✔️ The terraform graph command is a useful tool to generate a visual representation of either a configuration or execution plan.

✔️ The output of terraform graph is in the *DOT format*, which can be easily converted to an image using tools like Graphviz.

### 🚀 SAVING TERRAFORM PLAN TO FILE

✔️ You can save the generated Terraform plan to a specific path using the -out flag with the terraform plan command.

✔️ This allows you to have a saved plan that can be used with terraform apply, ensuring that only the changes shown in the plan are applied.

🔖 For example:
```
✅ terraform plan -out=path
```
However, it's worth noting that this feature is not frequently used in production environments.

### 🚀 TERRAFORM OUTPUT

✔️ As you may have noticed in earlier classes, I have been showing the output of the configuration we created in our .tf file.

✔️ The terraform output command is used to extract the value of an output variable from the state file.

🔖 For instance,

if you have defined output variables like iam_names and iam_arns in your configuration file,

you can extract the output of iam_names only by running:
```
✅ terraform output iam_names
```
This way, you can selectively access specific output values.