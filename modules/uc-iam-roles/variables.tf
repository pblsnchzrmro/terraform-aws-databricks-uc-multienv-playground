variable "role_name" {
  type = string
}

variable "bucket_arn" {
  type = string
}

variable "aws_account_id" {
  type = string
}

variable "databricks_account_id" {
  type = string
}

variable "uc_master_role_arn" {
  description = "The Unity Catalog Master Role ARN provided by Databricks"
  type        = string
}

variable "tags" {
  type    = map(string)
  default = {}
}