provider "aws" {
  region = "us-east-1"
}

module "cloudwatch_alarms" { source = "./cloudwatch_alarms" }
module "iam_account" { source = "./iam_account" }
module "iam_roles" { source = "./iam_roles" }
module "iam_users_and_groups" { source = "./iam_users_and_groups" }
