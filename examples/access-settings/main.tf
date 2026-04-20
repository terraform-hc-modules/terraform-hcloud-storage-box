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
# Storage Box - Access Settings
################################################################################

module "storage" {
  source = "../../"

  name             = local.name
  storage_box_type = "bx11"
  location         = "fsn1"
  password         = "ExamplePassword123!"
  labels           = local.tags

  access_settings = {
    reachable_externally = true
    ssh_enabled          = true
    samba_enabled        = false
    webdav_enabled       = true
    zfs_enabled          = false
  }
}

output "storage_box" {
  value = module.storage.storage_box
}

