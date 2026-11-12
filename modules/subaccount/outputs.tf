output "id" {
  description = "ID of the subaccount."
  value       = try(hcloud_storage_box_subaccount.this[0].id, null)
}

output "name" {
  description = "Name of the subaccount."
  value       = try(hcloud_storage_box_subaccount.this[0].name, null)
}

output "username" {
  description = "Username of the subaccount."
  value       = try(hcloud_storage_box_subaccount.this[0].username, null)
}

output "server" {
  description = "FQDN of the subaccount."
  value       = try(hcloud_storage_box_subaccount.this[0].server, null)
}

output "home_directory" {
  description = "Home directory of the subaccount."
  value       = try(hcloud_storage_box_subaccount.this[0].home_directory, null)
}

output "access_settings" {
  description = "Access settings of the subaccount."
  value       = try(hcloud_storage_box_subaccount.this[0].access_settings, null)
}

output "subaccount" {
  description = "Subaccount outputs as an object (without the password)."
  value = {
    id              = try(hcloud_storage_box_subaccount.this[0].id, null)
    name            = try(hcloud_storage_box_subaccount.this[0].name, null)
    username        = try(hcloud_storage_box_subaccount.this[0].username, null)
    server          = try(hcloud_storage_box_subaccount.this[0].server, null)
    home_directory  = try(hcloud_storage_box_subaccount.this[0].home_directory, null)
    access_settings = try(hcloud_storage_box_subaccount.this[0].access_settings, null)
  }
}
