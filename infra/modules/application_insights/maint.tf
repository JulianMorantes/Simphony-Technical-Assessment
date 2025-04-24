
resource "azurerm_application_insights" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = "web" # también puedes usar "other" dependiendo del tipo de aplicación

  retention_in_days   = 30  # Puedes ajustar este valor según lo que necesites
}