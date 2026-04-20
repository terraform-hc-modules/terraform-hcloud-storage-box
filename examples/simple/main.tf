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
# Storage Box
################################################################################

module "storage" {
  source = "../../"

  name             = local.name
  storage_box_type = "bx11"
  location         = "fsn1"
  password         = "ExamplePassword123!"
  labels           = local.tags
}
