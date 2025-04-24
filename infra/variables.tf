variable "location" {
    type        = string
    default     = "East US 2"
    description = "value for the location of the resource group"
}
variable "resource_group_name" {
    type        = string
    default     = "jm-assessment-rg"
    description = "value for the name of the resource group"
}
variable "service_plan_name" {
    type        = string
    default     = "jm-assessment-sp"
    description = "value for the name of the service plan"
}
variable "app_service_name" {
    type        = string
    default     = "jm-assessment-app-service"
    description = "value for the name of the app service"
}
variable "container_registry_name" {
    type        = string
    default     = "jm-assessment-acr"
    description = "value for the name of the container registry"
}
variable "storage_account_name" {
    type        = string
    default     = "jm-assessment-storage"
    description = "value for the name of the storage account"
}
variable "app_insights_name" {
    type        = string
    default     = "jm-assessment-insights"
    description = "value for the name of the application insights"
}
variable "subscription_id" {
  description = "ID de la suscripción de Azure"
  type        = string
}