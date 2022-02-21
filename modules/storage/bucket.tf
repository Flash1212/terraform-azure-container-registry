resource "azurerm_storage_account" "flashyBucket" {
  name                     = lower("${var.resource_group_prefix}buckets")
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = var.azurerm_storage_account_tier
  account_replication_type = var.azurerm_storage_account_replication_type

  tags = {
    environment = "test2"
  }
}

resource "azurerm_storage_container" "flashyContainer" {
  name                  = lower("${var.resource_group_prefix}-container")
  storage_account_name  = azurerm_storage_account.flashyBucket.name
  container_access_type = var.azurerm_storage_container_access_type
}
