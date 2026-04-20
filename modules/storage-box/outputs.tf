output "id" {
  description = "ID of the storage box."
  value       = try(hcloud_storage_box.this[0].id, null)
}

output "name" {
  description = "Name of the storage box."
  value       = try(hcloud_storage_box.this[0].name, null)
}

output "server" {
  description = "FQDN of the storage box."
  value       = try(hcloud_storage_box.this[0].server, null)
}

output "username" {
  description = "Primary username."
  value       = try(hcloud_storage_box.this[0].username, null)
}
