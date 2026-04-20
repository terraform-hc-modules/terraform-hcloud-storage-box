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
# Storage Box - Complete
################################################################################

module "storage" {
  source = "../../"

  name             = local.name
  storage_box_type = "bx21"
  location         = "fsn1"
  password         = "ExamplePassword123!"
  labels           = local.tags

  delete_protection = true

  access_settings = {
    reachable_externally = true
    samba_enabled        = false
    ssh_enabled          = true
    webdav_enabled       = true
    zfs_enabled          = true
  }

  snapshot_plan = {
    max_snapshots = 7
    minute        = 0
    hour          = 3
    day_of_week   = null
  }
}
