output "id" {
  description = "ID of the storage box."
  value       = module.storage_box.id
}

output "storage_box_type" {
  description = "Type of the storage box."
  value       = module.storage_box.storage_box_type
}

output "location" {
  description = "Location of the storage box."
  value       = module.storage_box.location
}

output "name" {
  description = "Name of the storage box."
  value       = module.storage_box.name
}

output "server" {
  description = "FQDN of the storage box."
  value       = module.storage_box.server
}

output "username" {
  description = "Primary username."
  value       = module.storage_box.username
}

output "access_settings" {
  description = "Access settings of the storage box."
  value       = module.storage_box.access_settings
}

output "snapshot_plan" {
  description = "Snapshot plan of the storage box."
  value       = module.storage_box.snapshot_plan
}

output "storage_box" {
  description = "Storage box outputs as an object."
  value       = module.storage_box.storage_box
}
