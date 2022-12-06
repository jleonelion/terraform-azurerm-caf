variable "settings" {
  type        = any
  description = "(Required) Used to handle passthrough paramenters."
}
variable "remote_objects" {
  type        = any
  description = "The remote objects the module depends on."
}
variable "location" {
  type        = string
  description = "Region of the the Replica Set."
}
variable "client_config" {
  type        = any
  description = "Client configuration object (see module README.md)."
}