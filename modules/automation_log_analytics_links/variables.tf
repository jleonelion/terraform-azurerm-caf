variable "settings" {
  type        = any
  description = "Configuration object for the Automation account Log Analytics Workspace link."
  # # optional fields supported after TF14
  # type = object({
  #   name                        = string
  #   resource_group_key          = string
  #   tags                        = optional(map(string))
  # })
}

variable "global_settings" {
  type        = any
  description = "Global settings object (see module README.md)"
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group where to create the resource."
}

variable "workspace_id" {
  type        = any
  description = "(Required) The Log Analytics Workspace id"
}

variable "read_access_id" {
  description = "(Optional) The ID of the readable Resource that will be linked to the workspace."
  type        = string
  default     = null
}

variable "write_access_id" {
  description = "(Optional) The ID of the writeable Resource that will be linked to the workspace."
  type        = string
  default     = null
}