module "storage_box" {
  source = "./modules/storage-box"

  create   = var.create
  name     = var.name
  location = var.location
  labels   = var.labels
}
