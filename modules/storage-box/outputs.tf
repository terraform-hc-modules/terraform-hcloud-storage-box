output "id" {
  value = try(hcloud_storage_box.this[0].id, null)
}

output "name" {
  value = try(hcloud_storage_box.this[0].name, null)
}
