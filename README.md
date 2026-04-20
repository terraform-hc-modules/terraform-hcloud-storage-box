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
<!-- END_TF_DOCS -->

## License

Mozilla Public License 2.0
