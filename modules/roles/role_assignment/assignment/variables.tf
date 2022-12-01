variable "scope" {}
variable "role_definition_name" {
  default = null
}
variable "role_definition_id" {
  default = null
}
variable "keys" {}
variable "azuread_apps" {}
variable "azuread_groups" {}
variable "managed_identities" {
  type = map(any)
}
variable "client_config" {
  type        = map(any)
  description = "Client configuration object (see module README.md)."
}