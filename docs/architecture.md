# Architecture

This module manages a Hetzner **Storage Box** and optional settings (access settings, snapshot plan, SSH keys).

The root module wraps `modules/storage-box` and exposes both **scalar outputs** and a **nested object output** (`storage_box`) for convenience.

## Data flow

```mermaid
flowchart TB
  U[Caller / Root module] -->|inputs| R[terraform-hcloud-storage-box]
  R --> SB[modules/storage-box]
  SB --> HSB[hcloud_storage_box]
  HSB --> OUT[outputs (id/name/server/username/...)]
  OUT --> U
```

## Notes

- `ssh_keys` is treated as a "replace" list by the upstream API. This module also ignores changes to `ssh_keys` after initial creation to avoid disruptive churn.
- `access_settings` and `snapshot_plan` are passed through as-is to the provider resource.
