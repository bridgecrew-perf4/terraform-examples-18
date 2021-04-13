provider "aws" {
  region = "us-east-1"
}

module "iam_account" {
  source = "./iam_account"
}

module "iam_users_and_groups" {
  source = "./iam_users_and_groups"
}

module "iam_roles" {
  source = "./iam_roles"
}
