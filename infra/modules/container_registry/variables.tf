variable "name" {
  type        = string
  description = "Nombre del Container Registry"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del resource group"
}

variable "location" {
  type        = string
  description = "Ubicación del recurso"
}

variable "sku" {
  type        = string
  default     = "Basic"
  description = "SKU del Container Registry (Basic, Standard, Premium)"
}
