variable "billing_account_id" {
  description = "Existing billing account ID to attach to the new project (XXXXXX-XXXXXX-XXXXXX)."
  type        = string
}

variable "org_id" {
  description = "Optional organization parent; leave null for a personal project."
  type        = string
  default     = null
}

variable "folder_id" {
  description = "Optional folder parent; cannot be set together with org_id."
  type        = string
  default     = null

  validation {
    condition     = var.folder_id == null || var.org_id == null
    error_message = "Set either org_id or folder_id, not both."
  }
}

variable "bucket_name" {
  description = "Globally unique state bucket name; defaults to <generated-project-id>-tofu-state."
  type        = string
  default     = null
  nullable    = true
}

variable "location" {
  description = "GCS bucket location. Choose before creation; changing it requires replacement."
  type        = string
}
