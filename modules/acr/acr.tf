
resource "azurerm_container_registry" "acr" {
  #CAPITAL letter in the name can cause weird errors with authentication
  name                = "${var.resource_group_prefix}acr"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  sku                 = var.acr_sku
  admin_enabled       = var.acr_admin_enabled
}
