resource "hcloud_storage_box" "this" {
  count = var.create ? 1 : 0

  name     = var.name
  location = var.location
  labels   = var.labels
}
