provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path ="/system/"
}
output "iam_names" {
  value = aws_iam_user.lb[*].name   # (*), this is the splat expression used here.
}

output "iam_arn" {
  value = aws_iam_user.lb[*].arn

  /*
   output the attribute of arn using the splat expression
   for all of the three iam user we have describe in the count.
  */
}