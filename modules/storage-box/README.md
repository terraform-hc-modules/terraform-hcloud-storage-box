# Storage Box

Manages Hetzner Storage Boxes.

Part of [`terraform-hc-modules/storage-box/hcloud`](../../README.md). Prefer the root module for most use cases; use this submodule directly when you need fine-grained control over just storage-box resources.

## Usage

```hcl
module "storage-box" {
  source = "terraform-hc-modules/storage-box/hcloud//modules/storage-box"
  # version = "~> 0.1"

  # See inputs below.
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.45 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | >= 1.45 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [hcloud_storage_box.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/storage_box) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_access_settings"></a> [access\_settings](#input\_access\_settings) | Access settings for the storage box. | <pre>object({<br/>    reachable_externally = optional(bool, true)<br/>    samba_enabled        = optional(bool, false)<br/>    ssh_enabled          = optional(bool, true)<br/>    webdav_enabled       = optional(bool, false)<br/>    zfs_enabled          = optional(bool, false)<br/>  })</pre> | `null` | no |
| <a name="input_create"></a> [create](#input\_create) | Whether to create the storage box. | `bool` | `true` | no |
| <a name="input_delete_protection"></a> [delete\_protection](#input\_delete\_protection) | Enable delete protection. | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to apply. | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the storage box. | `string` | `"fsn1"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the storage box. | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | Password for the storage box. | `string` | n/a | yes |
| <a name="input_snapshot_plan"></a> [snapshot\_plan](#input\_snapshot\_plan) | Snapshot plan configuration. | <pre>object({<br/>    max_snapshots = number<br/>    minute        = number<br/>    hour          = number<br/>    day_of_week   = optional(number)<br/>    day_of_month  = optional(number)<br/>  })</pre> | `null` | no |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | SSH public keys to inject. | `set(string)` | `[]` | no |
| <a name="input_storage_box_type"></a> [storage\_box\_type](#input\_storage\_box\_type) | Type of the storage box (e.g., bx11, bx21). | `string` | `"bx11"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_access_settings"></a> [access\_settings](#output\_access\_settings) | Access settings of the storage box. |
| <a name="output_id"></a> [id](#output\_id) | ID of the storage box. |
| <a name="output_location"></a> [location](#output\_location) | Location of the storage box. |
| <a name="output_name"></a> [name](#output\_name) | Name of the storage box. |
| <a name="output_server"></a> [server](#output\_server) | FQDN of the storage box. |
| <a name="output_snapshot_plan"></a> [snapshot\_plan](#output\_snapshot\_plan) | Snapshot plan of the storage box. |
| <a name="output_storage_box"></a> [storage\_box](#output\_storage\_box) | Storage box outputs as an object. |
| <a name="output_storage_box_type"></a> [storage\_box\_type](#output\_storage\_box\_type) | Type of the storage box. |
| <a name="output_username"></a> [username](#output\_username) | Primary username. |
<!-- END_TF_DOCS -->
