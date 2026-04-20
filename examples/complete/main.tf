provider "hcloud" {}

module "storage" {
  source = "../../"

  name     = "ex-complete"
  location = "fsn1"

  labels = {
    Environment = "production"
  }
}
