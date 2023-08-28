## Day 28

Welcome to Day 28 of our journey in learning Terraform (Infrastructure as a Code - IaaC). 

Let's get started! 🔰

### 🚀 𝐓𝐄𝐑𝐑𝐀𝐅𝐎𝐑𝐌 𝐖𝐎𝐑𝐊𝐒𝐏𝐀𝐂𝐄𝐒

Terraform offers us the flexibility of having multiple workspaces, each with its own set of environment variables. 

Each Terraform configuration comes with a 𝐛𝐚𝐜𝐤𝐞𝐧𝐝, which defines how operations are executed and where data, such as the 𝐬𝐭𝐚𝐭𝐞, is stored persistently.

#### 𝐁𝐚𝐜𝐤𝐞𝐧𝐝: 

A backend specifies where Terraform's state data files are stored. By default, Terraform uses a backend called "local," which stores the state as a local file on the disk. 


### 𝐒𝐭𝐚𝐭𝐞: 

The state is a crucial requirement for Terraform's functioning. It serves as a bridge between Terraform's configuration and the real-world infrastructure it manages. 



### 🚀 𝐔𝐒𝐈𝐍𝐆 𝐖𝐎𝐑𝐊𝐒𝐏𝐀𝐂𝐄𝐒 :

Initially, Terraform provides a default workspace named "default," which cannot be deleted.

If you haven't created a new workspace, you're using the default workspace in your Terraform working directory.


When you run a terraform plan in a new workspace, Terraform doesn't access existing resources in other workspaces. 

These resources still physically exist, but you need to switch workspaces to manage them effectively.

### 🚀 𝐂𝐑𝐄𝐀𝐓𝐈𝐍𝐆 𝐀𝐍𝐃 𝐔𝐒𝐈𝐍𝐆 𝐖𝐎𝐑𝐊𝐒𝐏𝐀𝐂𝐄𝐒: 𝐂𝐋𝐈 𝐀𝐏𝐏𝐑𝐎𝐀𝐂𝐇

Every initialized working directory starts with a default workspace. You can manage available workspaces in the current working directory using commands.

### Te𝐫𝐫𝐚𝐟𝐨𝐫𝐦 𝐰𝐨𝐫𝐤𝐬𝐩𝐚𝐜𝐞 𝐜𝐨𝐦𝐦𝐚𝐧𝐝𝐬 : 

The terraform workspace command provides a set of actions for managing workspaces within your Terraform projects.

* **new:** Create a new workspace.
```
terraform workspace new <name>
```
* **list:** List all available workspaces for the current configuration.
```
terraform workspace list
```

* **select:** Switch to a different workspace. 
```
terraform workspace select <name>
```

* **delete:** Delete a workspace.
```
terraform workspace delete <name> 
```

Remember that, for a given working directory, you can only work with one workspace at a time.  




Most Terraform commands interact with the currently selected workspace, including provisioning and state manipulation.



When provisioning infrastructure in each workspace, you'll usually need to specify different input variables to distinguish each environment.

 

🔖 For example, you might deploy test infrastructure in a different region.

### 🚀 𝐒𝐄𝐏𝐀𝐑𝐀𝐓𝐄 𝐒𝐓𝐀𝐓𝐄 𝐅𝐈𝐋𝐄𝐒 𝐈𝐍 𝐓𝐄𝐑𝐑𝐀𝐅𝐎𝐑𝐌 𝐖𝐎𝐑𝐊𝐒𝐏𝐀𝐂𝐄𝐒

Think of Terraform as a tool that builds and manages stuff in a virtual space.

**Each virtual space is called a workspace.**

Imagine if you had a separate notebook for each subject in school – that's similar to how Terraform keeps things organized.

So, when you're working on one thing in a workspace, Terraform keeps track of it separately from what you're doing in another workspace.

This separation helps to prevent mix-ups and confusion.

#### Remember this when you're studying for the Terraform certification exam or going for interviews! 😊