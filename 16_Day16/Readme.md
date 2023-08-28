## Day 16

🔖 This is Day 16 of learning Terraform (Infrastructure as a Code - IaaC).

So, let's get started! 🔰

📌 An important topic has come up: Dynamic Blocks 

### 🚀 Understand the challenge

Before we delve into the dynamic section.

let's understand a challenge that often arises in many use cases.

✔️ There are repeatable nested blocks that need to be defined, like in the security group section, where we define the ingress block (inbound rules) multiple times within the security group resource.

![image](https://github.com/sahdevgrover/terraform-basic-to-advanced-resources/assets/132704247/0d7222da-5f93-40d5-8f90-906150a7c5b7)

✔️ Instead of defining multiple ports by creating multiple ingress blocks, we would like to solve this issue using dynamic blocks.

### 🚀 DYNAMIC BLOCKS

✔️ The concept of dynamic blocks allows us to dynamically construct repeatable nested blocks supported inside resource, data, provider, and provisioner blocks.

![image](https://github.com/sahdevgrover/terraform-basic-to-advanced-resources/assets/132704247/a5a5dad7-8851-45a4-8831-400aeb3e6f92)

✅ Note: Dynamic blocks come under the resource block.

#### 🚀 ITERATORS

✔️ The iterator argument (which is optional) sets the name of a temporary variable that represents the current element of the complex value.

✔️ If omitted, the name of the variable defaults to the label of the dynamic block (e.g., "ingress" in the example shown below).

![image](https://github.com/sahdevgrover/terraform-basic-to-advanced-resources/assets/132704247/b22b84c4-facf-4f29-93e5-425aede9df01)


### 🚀 TERRAFORM TAINT

Let's first understand the use case.

✔️ In the production environment, you may face many challenges; for instance, someone may manually make many changes, both to the infrastructure and inside the server.

![image](https://github.com/sahdevgrover/terraform-basic-to-advanced-resources/assets/132704247/7d4f4674-77f2-4b6a-a82f-4dd820899019)


Now, there are two ways to deal with this situation:

✅ Import changes to Terraform

✅ Delete/recreate the resource

🚀 Recreating the Resource

![image](https://github.com/sahdevgrover/terraform-basic-to-advanced-resources/assets/132704247/15681faf-f525-4751-a93c-ca206391b5c2)

✔️ The command
```
terraform apply -replace
```
when executed, will force Terraform to replace an object even though there are no configuration changes that would require it.

🔖 Let's understand this with examples to make it simple :
```
terraform apply -replace="aws_instance.web"
```
✅ Important points to remember:

✔️ Similar kind of functionality was achieved using
```
terraform taint
```
command in earlier versions of terraform.

✔️ For Terraform v0.15.2 and later, HashiCorp recommend using the -replace option with terraform apply.
(which we have seen above.)

(Remember, changes are good for development environments.) 😊
