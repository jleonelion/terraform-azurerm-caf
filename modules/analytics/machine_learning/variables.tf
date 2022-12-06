variable "settings" {
  type        = any
  description = "Configuration object for the machine learning workspace."
  # # optional fields supported after TF14
  # type = object({
  #   name                    = string
  #   resource_group_key      = string
  #   application_insights_id = string
  #   key_vault_id            = optional(string)
  #   storage_account_id      = optional(string)
  #   tags                    = optional(map(string))
  #   sku_name                = string
  #   #identity {}
  # })
}

variable "client_config" {
  type        = any
  description = "Client configuration object (see module README.md)."
}

variable "global_settings" {
  type        = any
  description = "Global settings object (see module README.md)"
}

variable "resource_groups" {
  type        = any
  description = "(Required) The resource group objects where to create the resource."
}

variable "keyvault_id" {
  type        = string
  description = "The ID of the Key Vault to be used by the machine learning workspace."
}

variable "storage_account_id" {
  type        = string
  description = "The ID of the Storage Account to be used by the nachine learning workspace."
}
variable "application_insights_id" {
  description = "The ID of the App Insights to be used by the nachine learning workspace."
  type        = string
}

variable "base_tags" {
  description = "Base tags for the resource to be inherited from the resource group."
  type        = map(any)
}

variable "vnets" {
  type        = any
  description = "Virtual networks objects - contains all virtual networks that could potentially be used by the module."
}

variable "container_registry_id" {
  type    = string
  default = ""
}