# Storage Box Subaccount

Manages subaccounts of a Hetzner Storage Box.

Part of [`terraform-hc-modules/storage-box/hcloud`](../../README.md). Prefer the root module for most use cases; use this submodule directly when you need fine-grained control over just subaccount resources.

## Usage

```hcl
module "subaccount" {
  source = "terraform-hc-modules/storage-box/hcloud//modules/subaccount"
  # version = "~> 0.1"

  # See inputs below.
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.60.1 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | >= 1.60.1 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [hcloud_storage_box_subaccount.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/storage_box_subaccount) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_home_directory"></a> [home\_directory](#input\_home\_directory) | Home directory of the subaccount, relative to the storage box root. Created if it does not exist. | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | Password for the subaccount. | `string` | n/a | yes |
| <a name="input_storage_box_id"></a> [storage\_box\_id](#input\_storage\_box\_id) | ID of the storage box the subaccount belongs to. | `number` | n/a | yes |
| <a name="input_access_settings"></a> [access\_settings](#input\_access\_settings) | Access settings for the subaccount. Unset fields keep the API defaults. | <pre>object({<br/>    reachable_externally = optional(bool)<br/>    readonly             = optional(bool)<br/>    samba_enabled        = optional(bool)<br/>    ssh_enabled          = optional(bool)<br/>    webdav_enabled       = optional(bool)<br/>  })</pre> | `null` | no |
| <a name="input_create"></a> [create](#input\_create) | Whether to create the subaccount. | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the subaccount. | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to apply. | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the subaccount. | `string` | `null` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_access_settings"></a> [access\_settings](#output\_access\_settings) | Access settings of the subaccount. |
| <a name="output_home_directory"></a> [home\_directory](#output\_home\_directory) | Home directory of the subaccount. |
| <a name="output_id"></a> [id](#output\_id) | ID of the subaccount. |
| <a name="output_name"></a> [name](#output\_name) | Name of the subaccount. |
| <a name="output_server"></a> [server](#output\_server) | FQDN of the subaccount. |
| <a name="output_subaccount"></a> [subaccount](#output\_subaccount) | Subaccount outputs as an object (without the password). |
| <a name="output_username"></a> [username](#output\_username) | Username of the subaccount. |
<!-- END_TF_DOCS -->
