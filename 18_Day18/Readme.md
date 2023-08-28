## Day 18

🔖 This is Day 18 of learning terraform (infrastructure as a code - Iaac)

### ⚙️ TERRAFORM SETTINGS

✔️ Terraform settings are organized into terraform blocks, where we can configure various behaviors of Terraform itself.

#### 📌 SETTING 1 - TERRAFORM VERSION

✔️ The *required_version* setting

allows us to specify a version constraint string, defining which versions of Terraform can be used with our configuration.

✔️ If we include a version constraint in this terraform block, only that specific version will be utilized.

✔️ Terraform will produce an error and halt further actions if the running version does not match the specified constraint.

#### 📌 SETTING 2 - PROVIDER VERSION

✔️ The *required_providers* block

specifies all the providers required by the current module.

✔️ It maps each local provider name to a source address and a version constraint.

🚀 Now, let's discuss how to handle larger infrastructures and the challenges they may bring.

### 📌 Challenges with Larger Infrastructure:

✔️ When dealing with larger infrastructure,

you may encounter issues related to API limits for a specific provider.

🔖 For instance,

suppose your configuration file includes 5 different resources like EC2 instances, security groups, RDS databases, VPCs, and more.

Each resource will make API calls to the provider to update its state. This could potentially cause problems due to API rate limits.

#### 🚀 Overcoming API Limit Issues:

✔️ To overcome these issues,

one effective approach is to split your resources into smaller configurations, where each can be managed independently.

✔️ This means organizing resources into separate modules, allowing you to handle them more efficiently.

✔️ Another useful tactic is to prevent Terraform from querying the current state during operations like terraform plan.

You can achieve this by using the
```
 -refresh=false
```
flag. By doing so, you avoid updating the state of the resources during planning.

Furthermore,
```
-target=resource
```
flag can be utilized to target specific resources.

✔️ This is commonly used to operate on isolated portions of very large configurations, as explained earlier.

🔖 For example, if you have a large infrastructure, you can apply the following command:
```
terraform plan -target=ec2
```
This will focus only on planning changes for the EC2 resource.

🔖 *Remember, careful planning and organization are crucial when working with significant infrastructure to ensure efficient resource management.*