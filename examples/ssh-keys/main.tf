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
# Storage Box - SSH Keys
#
# Note: The Storage Box SSH keys API is "replace" style (set full desired list).
# This module also ignores changes to `ssh_keys` after initial create to avoid
# disruptive churn. If you need to rotate SSH keys later, you may need to
# explicitly manage that outside this module or recreate the storage box.
################################################################################

module "storage" {
  source = "../../"

  name             = local.name
  storage_box_type = "bx11"
  location         = "fsn1"
  password         = "ExamplePassword123!"
  labels           = local.tags

  ssh_keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFakeKeyForDocsOnly0000000000000000000000000000000 user@example",
  ]
}

output "server" {
  value = module.storage.server
}

