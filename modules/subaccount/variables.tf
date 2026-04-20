variable "create" {
  type    = bool
  default = true
}

variable "storage_box_id" {
  type = number
}

variable "comment" {
  type    = string
  default = null
}

variable "read_only" {
  type    = bool
  default = false
}

variable "chroot" {
  type    = bool
  default = false
}
