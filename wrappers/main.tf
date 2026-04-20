module "wrapper" {
  source   = "../"
  for_each = var.items

  name     = try(each.value.name, each.key)
  location = try(each.value.location, "fsn1")
  labels   = try(each.value.labels, {})
}

variable "items" {
  type    = any
  default = {}
}

output "wrapper" {
  value = module.wrapper
}
