
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
