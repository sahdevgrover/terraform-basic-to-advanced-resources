🔖 Today marks Day 15 of our Terraform journey, where we continue to explore Infrastructure as a Code (IaaC).

So, Let's get started! 🔰

Throughout these past 15 days, we have learned various concepts.

This exciting journey has been enriching for all of us, but there's still much more to learn.

So, sit back, relax, and let's continue ✌️

### 🚀 DATA SOURCES

✔️ Data sources in Terraform allow us to fetch or compute data for use elsewhere in the Terraform configuration.

🔖 For instance, suppose we have one EC2 instance in each of the three regions :

Mumbai
Singapore
tokyo

Each region has a different AMI ID, and these IDs keep updating regularly.

✔️ With data sources, we can define a block that reads from a specific data source
(e.g., aws_ami)

and exports the results under a name (e.g., app_ami).

✔️ This way, we can dynamically fetch the AMI ID from any of the regions mentioned above based on our requirements.

🔖 Please refer to the attached screenshot for a clearer understanding.

### 🚀 TERRAFORM DEBUGGING

✔️ Terraform provides detailed logs that can be enabled by setting the

✅ TF_LOG environment variable

to any value.

✔️ If you want to persist the logged output, you can set

✅ TF_LOG_PATH,

which will always append the log to a specific file when logging is enabled.

### 🚀 TERRAFORM FORMAT

✔️ As we script our Terraform configurations, just like any programming language, code formatting plays a crucial role in improving readability.

Thankfully,

✔️ Terraform has its own formatting tool

✅ terraform fmt

✔️ By running this command in the directory containing your .tf files, you can automatically format your code, making it more readable and maintainable.

### 🚀 TERRAFORM VALIDATE

✔️ Ensuring that your Terraform configuration is valid is essential.

✅ terraform validate

✔️ This command checks whether a configuration is grammatically valid and can detect issues like unsupported arguments and undeclared variables.

### 🚀 LOAD ORDER AND SEMANTICS

✔️ Terraform automatically loads all the configuration files within a specified directory in alphabetical order.

✔️ The files must end with either .tf or .tf.json to indicate the format in use.

✔️ This automatic loading process makes organizing and managing configurations much easier.

## 📌 Things to remember

✅ It's crucial to follow a specific file naming convention for each resource or configuration, as this simplifies locating and managing individual files.

✅ Remember that duplicate resource names in the same file are not allowed, as we discussed earlier in the Terraform series.

✅ Resource names must be unique per type to avoid conflicts.