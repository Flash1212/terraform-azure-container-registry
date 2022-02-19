resource "azurerm_resource_group" "ContainerRegisry_rg" {
  name     = "${var.resource_group_prefix}-RG"
  location = var.location
}
