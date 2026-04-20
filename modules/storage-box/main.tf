resource "hcloud_storage_box" "this" {
  count = var.create ? 1 : 0

  name              = var.name
  storage_box_type  = var.storage_box_type
  location          = var.location
  password          = var.password
  labels            = var.labels
  delete_protection = var.delete_protection
  ssh_keys          = var.ssh_keys
  access_settings   = var.access_settings
  snapshot_plan     = var.snapshot_plan

  lifecycle {
    ignore_changes = [ssh_keys]
  }
}
