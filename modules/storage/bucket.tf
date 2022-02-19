resource "azurerm_storage_account" "flashyBucket" {
  name                     = lower("${var.resource_group_prefix}bucket")
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "test"
  }
}

resource "azurerm_storage_container" "flashyContainer" {
  name                  = "vhds"
  storage_account_name  = azurerm_storage_account.flashyBucket.name
  container_access_type = "private"
}
