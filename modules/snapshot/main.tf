resource "hcloud_storage_box_snapshot" "this" {
  count = var.create ? 1 : 0

  storage_box_id = var.storage_box_id
  description    = var.description
}
