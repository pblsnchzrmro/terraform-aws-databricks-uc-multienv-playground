resource "databricks_storage_credential" "credential_uc_bucket" {
  provider = databricks.workspace
  name = module.uc_access_role.role_name
  aws_iam_role {
    role_arn = module.uc_access_role.role_arn
  }
  depends_on = [ module.uc_access_role ]
  comment = "Managed by TF" 
}