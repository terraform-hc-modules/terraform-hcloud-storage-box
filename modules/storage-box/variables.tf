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

  validation {
    condition     = can(regex("^bx(11|21|31|41)$", var.storage_box_type))
    error_message = "storage_box_type must be one of: bx11, bx21, bx31, bx41."
  }
}

variable "location" {
  description = "Location of the storage box."
  type        = string
  default     = "fsn1"

  validation {
    condition     = contains(["fsn1", "nbg1", "hel1"], var.location)
    error_message = "location must be one of: fsn1, nbg1, hel1."
  }
}

variable "password" {
  description = "Password for the storage box."
  type        = string
  sensitive   = true

  validation {
    condition = (
      length(var.password) >= 12 &&
      can(regex("[A-Z]", var.password)) &&
      can(regex("[a-z]", var.password)) &&
      can(regex("[0-9]", var.password))
    )
    error_message = "password must be at least 12 characters and include upper, lower, and a number."
  }
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
