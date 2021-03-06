
variable "resource_group_location" {
  description = <<EOF
        Specifies the supported Azure location where the resource exists.
        Changing this forces a new resource to be created. "
        EOF
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

variable "acr_sku" {
  description = <<EOF
    The SKU name of the container registry. Possible values are Basic,
    Standard and Premium.
    EOF
  default     = "Basic"
  type        = string
}

variable "acr_admin_enabled" {
  description = "Specifies whether the admin user is enabled"
  default     = false
  type        = bool
}
