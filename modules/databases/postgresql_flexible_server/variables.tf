variable "client_config" {
  type        = any
  description = "Client configuration object (see module README.md)."
  default     = {}
}

variable "global_settings" {
  type        = any
  description = "Global settings object (see module README.md)"
  default     = {}
}

variable "remote_objects" {
  type        = any
  description = "(Required) Specifies the supported Azure location where to create the resource. Changing this forces a new resource to be created."
  default     = {}
}

variable "settings" {
  type        = any
  description = "(Required) Used to handle passthrough parameters."
  default     = {}
}

variable "resource_group" {
  description = "Resource group object"
}

variable "base_tags" {
  description = "Base tags for the resource to be inherited from the resource group."
  type        = bool
}
