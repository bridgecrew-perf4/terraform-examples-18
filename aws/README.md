![](images/terraform_aws.png)

# Terraform AWS Examples



## How to use

1. Initialize
    ```sh
    terraform init
    ```

2. Run a module (e.g.: `iam_users_and_groups` module)
    ```sh
    terraform apply -auto-approve -compact-warnings -target module.iam_users_and_groups
    ```



## Available modules

### IAM

1. [`iam_account`](iam_account/README.md) - Sets account alias, password policy
1. [`iam_users_and_groups`](iam_users_and_groups/README.md) - Creates "user1" in the "admins" group
1. [`iam_roles`](iam_roles/README.md) - Creates a role with full access to S3 for AWS services (e.g.: EC2, Lambda)
