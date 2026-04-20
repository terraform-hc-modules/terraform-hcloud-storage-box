provider "hcloud" {}

module "storage" {
  source = "../../"

  name     = "ex-simple"
  location = "fsn1"
}
