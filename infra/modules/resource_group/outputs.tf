output "name" {
  description = "Nombre del Resource Group"
  value       = azurerm_resource_group.this.name
}

output "location" {
  description = "Ubicación del Resource Group"
  value       = azurerm_resource_group.this.location
}

output "id" {
  description = "ID del Resource Group utilizado para referenciarlo en otros módulos"
  value       = azurerm_resource_group.this.id
}