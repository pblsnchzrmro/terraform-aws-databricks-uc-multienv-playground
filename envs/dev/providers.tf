terraform {
  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = ">=1.13.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }

    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region     = var.region
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}


provider "databricks" {
  alias      = "mws"
  host       = var.databricks_host
  account_id = var.databricks_account_id
}

provider "databricks" {
  alias      = "workspace"
  host       = var.databricks_workspace_host
  account_id = var.databricks_account_id
}