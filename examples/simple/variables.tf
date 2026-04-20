variable "hcloud_token" {
  description = "Hetzner Cloud API token"
  type        = string
  sensitive   = true
}

variable "storage_box_password" {
  description = "Password for the Storage Box"
  type        = string
  sensitive   = true
}
