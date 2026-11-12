module "storage_box" {
  source = "./modules/storage-box"

  create            = var.create
  name              = var.name
  storage_box_type  = var.storage_box_type
  location          = var.location
  password          = var.password
  labels            = var.labels
  delete_protection = var.delete_protection
  ssh_keys          = var.ssh_keys
  access_settings   = var.access_settings
  snapshot_plan     = var.snapshot_plan
}

module "subaccount" {
  source   = "./modules/subaccount"
  for_each = var.create ? var.subaccounts : {}

  storage_box_id  = module.storage_box.id
  name            = each.value.name
  home_directory  = each.value.home_directory
  password        = var.subaccount_passwords[each.key]
  description     = each.value.description
  labels          = each.value.labels
  access_settings = each.value.access_settings
}

module "snapshot" {
  source   = "./modules/snapshot"
  for_each = var.create ? var.snapshots : {}

  storage_box_id = module.storage_box.id
  description    = each.value.description
  labels         = each.value.labels
}
