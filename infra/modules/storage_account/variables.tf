variable "name" {
  type        = string
  description = "Nombre del Storage Account"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del Resource Group"
}

variable "location" {
  type        = string
  description = "Ubicación del recurso"
}

variable "account_tier" {
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  default     = "LRS"
}