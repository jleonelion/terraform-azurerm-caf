variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group where to create the resource."
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where to create the resource. Changing this forces a new resource to be created."
}

variable "tags" {
  type        = map(any)
  description = "(Required) Map of tags to be applied to the resource"
}

variable "redis" {}

variable "subnet_id" {
  description = "The ID of the Subnet within which the Redis Cache should be deployed"
  type        = string
  default     = null
}

variable "global_settings" {
  type        = any
  description = "Global settings object (see module README.md)"
}

variable "base_tags" {
  description = "Base tags for the resource to be inherited from the resource group."
  type        = map(any)
}

variable "diagnostic_profiles" {
  type    = map(any)
  default = {}
}
variable "diagnostics" {
  type    = map(any)
  default = null
}
variable "vnets" {
  type    = map(any)
  default = {}
}
variable "private_endpoints" {
  type    = map(any)
  default = {}
}
variable "private_dns" {
  type    = map(any)
  default = {}
}
variable "client_config" {
  type        = map(any)
  description = "Client configuration object (see module README.md)."
}
