
resource "null_resource" "delay_before_app_service" {
  provisioner "local-exec" {
    command = "sleep 30"
  }
}


resource "azurerm_linux_web_app" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  site_config {
    always_on        = false
  }
  app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
  }
  identity {
    type = "SystemAssigned"
  }
}