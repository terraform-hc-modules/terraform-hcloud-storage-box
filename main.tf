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
