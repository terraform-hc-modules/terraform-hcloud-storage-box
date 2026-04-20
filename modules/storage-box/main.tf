resource "hcloud_storage_box" "this" {
  count = var.create ? 1 : 0

  name              = var.name
  storage_box_type  = var.storage_box_type
  location          = var.location
  password          = var.password
  labels            = var.labels
  delete_protection = var.delete_protection
  ssh_keys          = var.ssh_keys

  dynamic "access_settings" {
    for_each = var.access_settings != null ? [var.access_settings] : []
    content {
      reachable_externally = access_settings.value.reachable_externally
      samba_enabled        = access_settings.value.samba_enabled
      ssh_enabled          = access_settings.value.ssh_enabled
      webdav_enabled       = access_settings.value.webdav_enabled
      zfs_enabled          = access_settings.value.zfs_enabled
    }
  }

  dynamic "snapshot_plan" {
    for_each = var.snapshot_plan != null ? [var.snapshot_plan] : []
    content {
      max_snapshots = snapshot_plan.value.max_snapshots
      minute        = snapshot_plan.value.minute
      hour          = snapshot_plan.value.hour
      day_of_week   = snapshot_plan.value.day_of_week
      day_of_month  = snapshot_plan.value.day_of_month
    }
  }

  lifecycle {
    ignore_changes = [ssh_keys]
  }
}
