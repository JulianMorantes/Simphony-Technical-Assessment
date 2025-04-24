variable "name" {
    description = "The name of the resource group."
    type        = string
    default     = "jm-assessment-rg"
}
variable "location" {
    description = "The location of the resource group."
    type        = string
    default     = "East US 2"
}
variable "resource_group_name" {
    description = "The name of the resource group."
    type        = string
    default     = "jm-assessment-rg"
}
variable "service_plan_id" {
    description = "The ID of the service plan."
    type        = string
}