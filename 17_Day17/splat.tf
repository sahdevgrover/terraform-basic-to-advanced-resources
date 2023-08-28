
resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 4
  path = "/system/"
}

# 1. The output will be arn value of the iam-user.
output "arns" {
  value = aws_iam_user.lb[*].arn
}

# 2. The output will be name of the iam_user
output "names" {
  value = aws_iam_user.lb[*].name
}

# 3. The output will be combined(name+arn) using zipmap function << specific name = desired arn
output "combined" {
  value = zipmap(aws_iam_user.lb[*].name , aws_iam_user.lb[*].arn) #zipmap function
}
