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
# Storage Box - Snapshot Plan
################################################################################

module "storage" {
  source = "../../"

  name             = local.name
  storage_box_type = "bx11"
  location         = "fsn1"
  password         = "ExamplePassword123!"
  labels           = local.tags

  snapshot_plan = {
    max_snapshots = 14
    minute        = 0
    hour          = 3
    day_of_week   = 1
  }
}

output "snapshot_plan" {
  value = module.storage.snapshot_plan
}
