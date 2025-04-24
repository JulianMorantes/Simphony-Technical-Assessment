
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.7"
    }
  }
}

provider "azurerm" {
   features {}
  subscription_id = var.subscription_id
}

module "resource_group" {
  source = "./modules/resource_group"
  name   = var.resource_group_name
  location = var.location
}

module "service_plan" {
  source              = "./modules/service_plan"
  name                = var.service_plan_name
  location            = var.location
  resource_group_name = module.resource_group.name
}

module "app_service" {
  source              = "./modules/app_service"
  name                = var.app_service_name
  location            = var.location
  resource_group_name = module.resource_group.name
  service_plan_id     = module.service_plan.id
  depends_on          = [module.service_plan]

}

module "container_registry" {
  source              = "./modules/container_registry"
  name                = var.container_registry_name
  location            = var.location
  resource_group_name = module.resource_group.name
  sku                 = "Basic"
}

module "storage_account" {
  source              = "./modules/storage_account"
  name                = var.storage_account_name
  location            = var.location
  resource_group_name = module.resource_group.name
}

module "application_insights" {
  source              = "./modules/application_insights"
  name                = var.app_insights_name
  location            = var.location
  resource_group_name = module.resource_group.name
}