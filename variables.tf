variable "create" {
  description = "Whether to create the storage box."
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the storage box."
  type        = string
}

variable "storage_box_type" {
  description = "Type of the storage box (e.g., bx11, bx21)."
  type        = string
  default     = "bx11"
}

variable "location" {
  description = "Location of the storage box."
  type        = string
  default     = "fsn1"
}

variable "password" {
  description = "Password for the storage box."
  type        = string
  sensitive   = true
}

variable "labels" {
  description = "Labels to apply."
  type        = map(string)
  default     = {}
}

variable "delete_protection" {
  description = "Enable delete protection."
  type        = bool
  default     = false
}

variable "ssh_keys" {
  description = "SSH public keys to inject."
  type        = set(string)
  default     = []
}

variable "access_settings" {
  description = "Access settings for the storage box."
  type = object({
    reachable_externally = optional(bool, true)
    samba_enabled        = optional(bool, false)
    ssh_enabled          = optional(bool, true)
    webdav_enabled       = optional(bool, false)
    zfs_enabled          = optional(bool, false)
  })
  default = null
}

variable "snapshot_plan" {
  description = "Snapshot plan configuration."
  type = object({
    max_snapshots = number
    minute        = number
    hour          = number
    day_of_week   = optional(number)
    day_of_month  = optional(number)
  })
  default = null
}
