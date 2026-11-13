provider "hcloud" {}

locals {
  name = "ex-${basename(path.cwd)}"

  tags = {
    Example    = local.name
    GithubRepo = "terraform-hcloud-storage-box"
    GithubOrg  = "terraform-hc-modules"
  }
}

################################################################################
# Storage Box - Subaccounts and Snapshots
################################################################################

module "storage" {
  source = "../../"

  name             = local.name
  storage_box_type = "bx11"
  location         = "fsn1"
  password         = "ExamplePassword123!"
  labels           = local.tags

  subaccounts = {
    backup = {
      name           = "backup"
      home_directory = "backups/app"
      description    = "Backup agent"
      labels         = local.tags
      access_settings = {
        ssh_enabled          = true
        reachable_externally = false
      }
    }
    reports = {
      home_directory = "reports"
      access_settings = {
        readonly       = true
        webdav_enabled = true
      }
    }
  }

  subaccount_passwords = {
    backup  = "ExampleBackupPassword123!"
    reports = "ExampleReportsPassword123!"
  }

  snapshots = {
    initial = {
      description = "Initial snapshot"
      labels      = local.tags
    }
  }
}
