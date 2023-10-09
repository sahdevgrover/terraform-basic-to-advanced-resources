# Terraform Cloud & Sentinel

## Terraform Cloud

Terraform Cloud manages Terraform runs in a consistent and reliable environment with various features like access controls, a private registry for sharing modules, policy controls, and others.

The Terraform Cloud UI provides a detailed view into the resources managed by a Terraform project and gives enhanced visibility into each Terraform operation.

As mentioned, Terraform Cloud also has a private registry for sharing your organization's Terraform modules and providers.

Unlike in Terraform OSS, we have a public registry.

_**When talking about paid features:**_

* It includes access controls for approving changes to infrastructure, detailed policy controls for governing the contents of Terraform configurations, cost estimates for runs, and more.

**Terraform Cloud helps you collaborate on each step of your infrastructure development process.**

For example, each time you plan a new change, your team can review and approve the plan before you apply it.

It also automatically locks state during operations to prevent concurrent modifications that may corrupt the state file.

We had studied all about managing the infrastructure, locking the state, and all. I hope you would not be facing any difficulty in understanding this.

Let's understand with an example - it's like you are building something, let's say your house, and you hire experts who follow a blueprint and ensure every step is perfect.

If something needs changing, they adjust it effortlessly. Likewise, with Terraform Cloud, you are effortlessly provisioning things with more other benefits as well.

Sounds great, isn't it?

## Understanding the workflow

Terraform Cloud operates using three simple workflows. Think of these as different ways to manage your infrastructure projects.

### CLI-Driven Workflow

This is like having a set of powerful tools that you control from your command line (Terminal).

Terraform Cloud manages everything behind the scenes, like storing your data securely.

### UI/VCS-Driven Workflow

Let's say you have a workspace connected to your blueprint (Terraform code).

Whenever you make changes to your Terraform code, the workspace updates automatically, ensuring infra stays perfect.

Example: You have a magic notebook that updates your to-do list whenever you make a change. Haha, this is what I want personally!

### API-Driven Workflow

This is like having a robot that follows your commands precisely.

You can create custom tools to interact with Terraform Cloud programmatically.

Example: You have a robot assistant (your AI) that helps with various tasks at your command.

I hope you have understood clearly.

Now, whenever we discuss Terraform Cloud, we talked about Sentinel (policy-as-code).

## Sentinel

It is a policy-as-code framework integrated with the HashiCorp Enterprise products.

It enables fine-grained, logic-based policy decisions and can be extended to use information.

**Note: It is a paid feature.**

**Workflow**

_**Terraform < Sentinel checks < Terraform apply.**_

Let's understand with a suitable example:

You have associated a policy integrated with your code that whenever the EC2 instance is created if it doesn't have tags, then it will be blocked from creating.

And this policy we attached to the policy sets in our workspace environment.

**A policy consists of:**

* The policy controls defined as code.

* An enforcement level that determines run behavior in the event of policy failure.

**Remember: Policy sets are the mapping between policies and workspaces.**

So, when we apply our configuration, if EC2 doesn't have tags, then it will block the EC2 instance from creating.

So, you can see how it's beneficial for security checkups, policy enforcement, cost control (important part), integration with VCS, and many more.

****Some key takeaways:****

* Sentinel checks will run at the IaaC level (Terraform level), not at the provider level.

Means if someone has changed directly in AWS environment, then Sentinel would not be able to verify it (obvious, as said, for that AWS config service, we need).

* Workspaces in OSS are often used within the same working directory, while workspaces in Enterprise/Cloud are often (but not required) mapped to unique repos.

## Conclusion

Terraform Cloud simplifies infrastructure management, making it as easy as following a recipe. Whether you prefer the command line, visual, or custom approaches, Terraform Cloud has you covered, with many benefits with Sentinel policies.

If you have any questions or encounter issues, please don't hesitate to reach out.

LinkedIn Profile: https://www.linkedin.com/in/sahdevgrover/

**Author: Sahdev Grover**


