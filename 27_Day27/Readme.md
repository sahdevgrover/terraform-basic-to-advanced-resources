# Day 27 
This is Day 27 of our journey in learning Terraform (Infrastructure as a code - Iaac).

So, let's get started!🔰

### Key Takeaways from Yesterday's Learnings on Module Output Values:

The output values defined within a module are not immediately visible on the command line when declared in a project or configuration file. 

To highlight them on the command line, you need to declare these outputs in your configuration file and then reference them in the provisioning or calling module.

## Terraform Registry:

The Terraform registry serves as a repository of modules contributed by the Terraform community. It accelerates the onboarding process with Terraform by offering a collection of pre-built modules.

### Module Location:

When utilizing a module, you must specify the path to the module files. These files can be stored in various locations, including local paths, GitHub repositories, the Terraform Registry, S3 buckets, or HTTP URLs.

### Module Sources:

The "source" argument in Terraform tells the tool where to find configurations for child modules. This includes locations like GitHub repositories, Terraform Registry entries, and more. Understanding how to specify the source is crucial.

##### Verified Modules in Terraform Registry:

Within the Terraform Registry, you can find modules that are verified and maintained by third-party vendors. These modules cover a wide range of resources, such as AWS S3, VPC, ELB, etc.

##### Using Registry Modules in Terraform:

To use a module from the Terraform Registry in your code, you need to leverage the "source" argument, which contains the module's path within the registry. The provided code snippet demonstrates how to reference an EC2 instance module from the Terraform Registry.

### Publishing Modules:

#### Overview of Module Publishing:

Anyone can publish and share modules on the Terraform Registry. Published modules support versioning, automatic documentation generation, version history browsing, example showcasing, READMEs, and more.

#### Publishing Requirements:

* To publish a module, certain requirements must be met:


* The module should be hosted on GitHub (public repo) for the public registry.


* The repository name should follow the format terraform-<PROVIDER>-<NAME>, reflecting the infrastructure type and provider (e.g., terraform-google-vault or terraform-aws-ec2-instance).


* A proper repository description should be provided for the short module description.


* Adherence to the standard module structure is essential for documentation, submodules, examples, etc.


* Semantic versioning tags (x.y.z) are used for module releases.

##### Standard Module Structure:

The standard module structure is recommended for reusable modules in separate repositories. This layout involves directories like "main.tf," "variables.tf," "outputs.tf," "modules/" for nested modules, and "examples/" for usage examples.