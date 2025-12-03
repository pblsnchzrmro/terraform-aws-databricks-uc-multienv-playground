variable "name" {
  type        = string
  description = "Bucket name"
}

variable "common_tags" {
  type        = map(string)
  description = "Map of tags."
  default     = {}
}

variable "bucket_versioning_enabled" {
  type        = bool
  description = "Bucket versioning flag"
  default     = false
}
variable "bucket_policy_statements" {
  type        = list(string)
  description = "Bucket policy"
  default     = []
}

variable "public_policies_enabled" {
  type = bool
  default = false
}

variable "force_destroy" {
  type = bool
  default = false
  description = "Disable deletion protection"
}