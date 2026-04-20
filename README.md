# Hetzner Cloud Storage Box Module

> **⚠️ EXPERIMENTAL / BETA**
>
> This module uses Hetzner Storage Box resources which are marked as experimental.
> Use with caution in production environments.

Terraform module for Hetzner Storage Box (network storage).

## Usage

```hcl
module "storage" {
  source  = "terraform-hc-modules/storage-box/hcloud"
  version = "~> 0.1"

  name     = "my-storage"
  location = "fsn1"
}
```

## Submodules

| Module | Description |
|--------|-------------|
| [storage-box](modules/storage-box) | Storage Box |
| [snapshot](modules/snapshot) | Storage Box snapshots |
| [subaccount](modules/subaccount) | Storage Box subaccounts |

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.45 |

## Providers

No providers.

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_storage_box"></a> [storage\_box](#module\_storage\_box) | ./modules/storage-box | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_create"></a> [create](#input\_create) | n/a | `bool` | `true` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | n/a | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"fsn1"` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
<!-- END_TF_DOCS -->

## License

Mozilla Public License 2.0
