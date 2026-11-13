variable "create" {
  description = "Whether to create the snapshot."
  type        = bool
  default     = true
}

variable "storage_box_id" {
  description = "ID of the storage box to snapshot."
  type        = number
}

variable "description" {
  description = "Description of the snapshot."
  type        = string
  default     = null
}

variable "labels" {
  description = "Labels to apply."
  type        = map(string)
  default     = {}
}
