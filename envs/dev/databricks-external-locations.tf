resource "databricks_external_location" "uc_storage_bucket" {
  provider = databricks.workspace
  name            = "external-location-${module.s3_uc_bucket.bucket_name}"
  url             = "s3://${module.s3_uc_bucket.id}/"
  credential_name = databricks_storage_credential.credential_uc_bucket.id
  force_destroy = true
  depends_on = [ module.uc_access_role ]
  comment         = "Managed by TF"
}