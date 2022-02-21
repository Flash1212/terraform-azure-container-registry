variable "resource_group_location" {
  description = <<EOF
        Specifies the supported Azure location where the resource exists.
        Changing this forces a new resource to be created. "
        EOF
  default     = "westus2"
  type        = string
}

variable "resource_group_prefix" {
  description = <<EOF
        The prefix-name of the resource group in which to create the Container
        Registry. Changing this forces a new resource to be created.
    EOF
  type        = string
}

variable "resource_group_name" {
  description = <<EOF
        The name of the resource group in which to create the Container Registry.
        Changing this forces a new resource to be created.
    EOF
  type        = string
}

variable "azurerm_storage_account_tier" {
  description = <<EOF
    Defines the Tier to use for this storage account. Valid options are Standard
    and Premium
  EOF
  type        = string
  default     = "Standard"
}

variable "azurerm_storage_account_replication_type" {
  description = <<EOF
    Defines the type of replication to use for this storage account. Valid
    options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS.
  EOF
  type        = string
  default     = "LRS"
}

variable "azurerm_storage_container_access_type" {
  description = <<EOF
    The Access Level configured for this Container. Possible values are blob,
    container or private"
  EOF
  type        = string
  default     = "private"
}
