variable "automation_account_name" {
  type = string
}

variable "settings" {
  description = "Configuration object for the Automation account schedule."
  type        = any
}

variable "global_settings" {
  description = "Global settings object (see module README.md)"
  type        = any
}
variable "location" {
  description = "(Optional) Resource Location"
  default     = null
  type        = string
}
variable "resource_group_name" {
  description = "Resource group object to deploy the virtual machine"
  default     = null
  type        = string
}
variable "resource_group" {
  description = "Resource group object to deploy the virtual machine"
  type        = any
}
variable "base_tags" {
  description = "Enable tags inheritence."
  type        = bool
}

variable "client_config" {
  type = any
}
