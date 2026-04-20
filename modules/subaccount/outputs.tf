output "id" {
  value = try(hcloud_storage_box_subaccount.this[0].id, null)
}

output "username" {
  value = try(hcloud_storage_box_subaccount.this[0].username, null)
}
