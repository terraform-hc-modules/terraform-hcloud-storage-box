output "id" {
  description = "ID of the storage box."
  value       = module.storage_box.id
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
