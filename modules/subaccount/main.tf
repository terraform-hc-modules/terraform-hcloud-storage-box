resource "hcloud_storage_box_subaccount" "this" {
  count = var.create ? 1 : 0

  storage_box_id  = var.storage_box_id
  name            = var.name
  home_directory  = var.home_directory
  password        = var.password
  description     = var.description
  labels          = var.labels
  access_settings = var.access_settings
}
