resource "hcloud_storage_box_subaccount" "this" {
  count = var.create ? 1 : 0

  storage_box_id = var.storage_box_id
  comment        = var.comment
  read_only      = var.read_only
  chroot         = var.chroot
}
