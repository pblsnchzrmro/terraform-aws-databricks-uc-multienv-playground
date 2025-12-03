module "s3_uc_bucket" {
  source                    = "../../modules/s3"
  name                      = "databricks-ucbucket-${local.naming_base}"
  bucket_versioning_enabled = true
  force_destroy             = false
  public_policies_enabled   = false
  bucket_policy_statements  = []
  common_tags               = local.common_tags
}

module "uc_access_role" {
  source               = "../../modules/uc-iam-roles"
  role_name            = "${local.naming_base}-uc-access"
  bucket_arn           = module.s3_uc_bucket.arn
  aws_account_id       = var.aws_account_id
  databricks_account_id = var.databricks_account_id
  uc_master_role_arn   = var.uc_master_role_arn
  tags                 = local.common_tags
}

