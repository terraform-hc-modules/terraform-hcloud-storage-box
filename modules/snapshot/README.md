# Storage Box Snapshot

Manages manual snapshots of a Hetzner Storage Box.

Part of [`terraform-hc-modules/storage-box/hcloud`](../../README.md). Prefer the root module for most use cases; use this submodule directly when you need fine-grained control over just snapshot resources.

## Usage

```hcl
module "snapshot" {
  source = "terraform-hc-modules/storage-box/hcloud//modules/snapshot"
  # version = "~> 0.1"

  # See inputs below.
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.60 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | >= 1.60 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [hcloud_storage_box_snapshot.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/storage_box_snapshot) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_storage_box_id"></a> [storage\_box\_id](#input\_storage\_box\_id) | ID of the storage box to snapshot. | `number` | n/a | yes |
| <a name="input_create"></a> [create](#input\_create) | Whether to create the snapshot. | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the snapshot. | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to apply. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_id"></a> [id](#output\_id) | ID of the snapshot. |
| <a name="output_name"></a> [name](#output\_name) | Name of the snapshot (assigned by the API). |
| <a name="output_snapshot"></a> [snapshot](#output\_snapshot) | Snapshot outputs as an object. |
<!-- END_TF_DOCS -->
