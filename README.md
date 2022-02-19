# terraform-azure-container-registry
Build Azure Container Registry with Terraform

This repository will create an Azure Container Registry via Terraform.

It expects the following variables to be submitted either via a tfvars file
or one of Terraforms other methods for submitting sensitive variables.

- serviceprinciple_id
- serviceprinciple_key
- tenant_id
- subscription_id
- resource_group_prefix
- acr_sku
