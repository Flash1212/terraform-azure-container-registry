variable "acr_sku" {
  description = <<EOF
    The SKU name of the container registry. Possible values are Basic,
    Standard and Premium.
    EOF
  default     = "Basic"
  type        = string
}

variable "location" {
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

variable "serviceprinciple_id" {
  description = "The Client ID which should be used. to connect to Azure"
  type        = string
}

variable "serviceprinciple_key" {
  description = "The Client Secret which should be used to connecto to Azure"
  type        = string
}

variable "subscription_id" {
  description = "The subscription to be connected to."
  type        = string
}

variable "tenant_id" {
  description = <<EOF
        The Tenant ID for the Service Principal associated with the Managed Service
        Identity of this Container Registry.
        EOF
  type        = string
}
