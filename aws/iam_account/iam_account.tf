# Sets account alias to "alias1"
resource "aws_iam_account_alias" "alias" {
  account_alias = "alias1"
}



# Sets account password policy
resource "aws_iam_account_password_policy" "password_policy" {
  allow_users_to_change_password = true
  minimum_password_length        = 8
  require_lowercase_characters   = true
  require_numbers                = true
  require_symbols                = true
  require_uppercase_characters   = true
}
