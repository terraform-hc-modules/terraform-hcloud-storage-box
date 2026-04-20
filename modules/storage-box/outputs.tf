output "id" {
  description = "ID of the storage box."
  value       = try(hcloud_storage_box.this[0].id, null)
}

output "storage_box_type" {
  description = "Type of the storage box."
  value       = try(hcloud_storage_box.this[0].storage_box_type, null)
}

output "location" {
  description = "Location of the storage box."
  value       = try(hcloud_storage_box.this[0].location, null)
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

output "access_settings" {
  description = "Access settings of the storage box."
  value       = try(hcloud_storage_box.this[0].access_settings, null)
}

output "snapshot_plan" {
  description = "Snapshot plan of the storage box."
  value       = try(hcloud_storage_box.this[0].snapshot_plan, null)
}

output "storage_box" {
  description = "Storage box outputs as an object."
  value = {
    id               = try(hcloud_storage_box.this[0].id, null)
    name             = try(hcloud_storage_box.this[0].name, null)
    server           = try(hcloud_storage_box.this[0].server, null)
    username         = try(hcloud_storage_box.this[0].username, null)
    storage_box_type = try(hcloud_storage_box.this[0].storage_box_type, null)
    location         = try(hcloud_storage_box.this[0].location, null)
    access_settings  = try(hcloud_storage_box.this[0].access_settings, null)
    snapshot_plan    = try(hcloud_storage_box.this[0].snapshot_plan, null)
  }
}
