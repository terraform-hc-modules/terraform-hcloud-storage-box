output "id" {
  value = try(hcloud_storage_box_snapshot.this[0].id, null)
}
