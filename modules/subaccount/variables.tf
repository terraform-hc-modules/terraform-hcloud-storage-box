variable "create" {
  description = "Whether to create the subaccount."
  type        = bool
  default     = true
}

variable "storage_box_id" {
  description = "ID of the storage box the subaccount belongs to."
  type        = number
}

variable "name" {
  description = "Name of the subaccount."
  type        = string
  default     = null
}

variable "home_directory" {
  description = "Home directory of the subaccount, relative to the storage box root. Created if it does not exist."
  type        = string

  validation {
    condition     = length(trimspace(var.home_directory)) > 0 && !startswith(var.home_directory, "/")
    error_message = "home_directory must not be empty and must not start with a slash."
  }
}

variable "password" {
  description = "Password for the subaccount."
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

variable "description" {
  description = "Description of the subaccount."
  type        = string
  default     = null
}

variable "labels" {
  description = "Labels to apply."
  type        = map(string)
  default     = {}
}

variable "access_settings" {
  description = "Access settings for the subaccount. Unset fields keep the API defaults."
  type = object({
    reachable_externally = optional(bool)
    readonly             = optional(bool)
    samba_enabled        = optional(bool)
    ssh_enabled          = optional(bool)
    webdav_enabled       = optional(bool)
  })
  default = null
}
