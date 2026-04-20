variable "hcloud_token" {
  description = "Hetzner Cloud API token"
  type        = string
  sensitive   = true
}

variable "storage_box_password" {
  description = "Password for the main Storage Box"
  type        = string
  sensitive   = true
}

variable "backup_subaccount_password" {
  description = "Password for the backup subaccount"
  type        = string
  sensitive   = true
}

variable "readonly_subaccount_password" {
  description = "Password for the readonly subaccount"
  type        = string
  sensitive   = true
}
