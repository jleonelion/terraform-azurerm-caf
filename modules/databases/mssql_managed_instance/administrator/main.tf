terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.48"
    }
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "~> 1.2.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.30.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2.1"
    }
  }

}

locals {
  object_id    = coalesce(var.group_id, try(data.azuread_user.upn[0].id, null))
  display_name = var.group_id != null ? var.group_name : var.user_principal_name
}
