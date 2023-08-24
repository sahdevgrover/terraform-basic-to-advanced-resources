### This is Day 26 of our journey in learning Terraform (Infrastructure as a code - Iaac).

So, let's get started!🔰

#### 🚀 Output Values -

✔️ Output values are an invaluable way to make information about your infrastructure accessible on the command line, and they can also be shared for other Terraform configurations to utilize. 

###### Think of output values as the return values in programming languages.

#### 📌 Why are output values important?

##### ✅ Child Modules Interaction: 
Outputs enable child modules to share a subset of their resource attributes with parent modules.

##### ✅ CLI Transparency: 
Output values allow root modules to showcase specific values in the command line output after executing terraform apply.

##### ✅ Remote State Sharing: 
With remote state, output values from root modules can be accessed by other configurations via the terraform_remote_state data source.

Pretty intuitive, isn't it? 😄

###### Instead of saying "output values," we often refer to them as just "outputs" for simplicity. 

✔️ These outputs allow Terraform-managed resource instances to export attribute values for reuse elsewhere in your configuration. Outputs shine a spotlight on these attributes for your module's user.

#### 📌 How to Declare an Output Value -

Every output value that a module exports needs to be declared within an output block like so:

```
output "instance_ip_addr" {
  value = aws_instance.server.private_ip
}
```

In this snippet, 


The label immediately following the output keyword represents the output's name, serving as a valid identifier. 

In a root module, this name is what users see, while in a child module, it provides access to the output's value.

The value argument holds an expression whose result will be presented to the user. 

🔖 In our example, 

the expression refers to the private_ip attribute from an aws_instance resource situated elsewhere in this module (though not shown here). 

You can use any valid expression as an output value.

![image](https://github.com/sahdevgrover/terraform-basic-to-advanced-resources/assets/132704247/ee51033f-6ce8-45e4-a8b3-9858d75c1921)


![image](https://github.com/sahdevgrover/terraform-basic-to-advanced-resources/assets/132704247/8dcf33a3-a7cc-4595-abbe-a62f5252522c)

#### 🚀 Accessing Child Module Outputs -

✔️ For parent modules, accessing outputs from child modules is done through expressions like:


```
module.<MODULE NAME>.<OUTPUT NAME>
```

🔖 For instance, if you have an EC2 instance and you wish to display its instance ID on the command line, you can conveniently do so by setting up an output block like this:

```
output "ec2_instance_id" {
  value = resourcename.localname.id
}
```
And there you go, you're showcasing your instance ID on the command line!
