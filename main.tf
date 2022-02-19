module "azure_container_registry" {
  source = "./modules/acr/"

  acr_sku                 = var.acr_sku
  resource_group_location = module.azure_resource_group.resource_group_location
  resource_group_name     = module.azure_resource_group.resource_group_name
  resource_group_prefix   = var.resource_group_prefix
}

module "azure_resource_group" {
  source = "./modules/rg/"


  location              = var.location
  resource_group_prefix = var.resource_group_prefix
}

module "azure_storage" {
  source = "./modules/storage/"

  resource_group_location = module.azure_resource_group.resource_group_location
  resource_group_name     = module.azure_resource_group.resource_group_name
  resource_group_prefix   = var.resource_group_prefix
}
