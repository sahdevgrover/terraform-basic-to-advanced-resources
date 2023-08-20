# Defining a Terraform variable named "instance_type"
variable "instance_type" {
    default = "t2.micro"  # Default value for the "instance_type" variable.

    /*
    If no value is explicitly provided when you use this variable,
    Terraform will use "t2.micro" as the default value.
    */
}