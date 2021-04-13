# Creates "admins" group with admin permissions
resource "aws_iam_group" "admins" {
  name = "admins"
}
resource "aws_iam_group_policy_attachment" "policy_attachment" {
  group      = aws_iam_group.admins.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}



# Creates user "user1" and adds the user to the "admins" group
resource "aws_iam_user" "user1" {
  name = "user1"
}
resource "aws_iam_user_group_membership" "user1" {
  user = aws_iam_user.user1.name
  groups = [
    aws_iam_group.admins.name
  ]
}
