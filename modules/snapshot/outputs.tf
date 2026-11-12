output "id" {
  description = "ID of the snapshot."
  value       = try(hcloud_storage_box_snapshot.this[0].id, null)
}

output "name" {
  description = "Name of the snapshot (assigned by the API)."
  value       = try(hcloud_storage_box_snapshot.this[0].name, null)
}

output "snapshot" {
  description = "Snapshot outputs as an object."
  value = {
    id           = try(hcloud_storage_box_snapshot.this[0].id, null)
    name         = try(hcloud_storage_box_snapshot.this[0].name, null)
    description  = try(hcloud_storage_box_snapshot.this[0].description, null)
    is_automatic = try(hcloud_storage_box_snapshot.this[0].is_automatic, null)
  }
}
