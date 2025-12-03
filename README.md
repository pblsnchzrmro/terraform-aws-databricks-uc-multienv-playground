# terraform-aws-databricks-uc-multienv-playground

Multi-environment Terraform setup for Databricks Unity Catalog on AWS.

## Structure

- `envs/` - Environment-specific configurations (dev, stage, prod)
- `modules/` - Reusable Terraform modules
  - `s3/` - S3 bucket management
  - `uc-iam-roles/` - Unity Catalog IAM roles

## Prerequisites

- Terraform >= 1.0
- AWS credentials
- Databricks account with Unity Catalog enabled

## Usage

```bash
cd envs/dev  # or stage/prod
terraform init
terraform plan
terraform apply
```

## Configuration

Create a `terraform.tfvars` file in each environment with:

```hcl
aws_account_id            = "your-aws-account-id"
databricks_account_id     = "your-databricks-account-id"
databricks_workspace_host = "https://your-workspace.cloud.databricks.com"
uc_master_role_arn       = "arn:aws:iam::account-id:role/uc-master-role"
project_name             = "your-project"
env                      = "dev"
region                   = "eu-west-1"
```

Authentication uses environment variables:
- `DATABRICKS_CLIENT_ID`
- `DATABRICKS_CLIENT_SECRET`
- `AWS_ACCESS_KEY`
- `AWS_SECRET_KEY`