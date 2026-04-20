module "wrapper" {
  source   = "../"
  for_each = var.items

  name              = try(each.value.name, each.key)
  storage_box_type  = try(each.value.storage_box_type, "bx11")
  location          = try(each.value.location, "fsn1")
  password          = each.value.password
  labels            = try(each.value.labels, {})
  delete_protection = try(each.value.delete_protection, false)
  ssh_keys          = try(each.value.ssh_keys, [])
  access_settings   = try(each.value.access_settings, null)
  snapshot_plan     = try(each.value.snapshot_plan, null)
}

variable "items" {
  description = "Map of storage box configurations."
  type        = any
  default     = {}
}

output "wrapper" {
  description = "Map of storage box outputs."
  value       = module.wrapper
}
