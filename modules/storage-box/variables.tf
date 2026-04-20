variable "create" {
  type    = bool
  default = true
}

variable "name" {
  type = string
}

variable "location" {
  type    = string
  default = "fsn1"
}

variable "labels" {
  type    = map(string)
  default = {}
}
