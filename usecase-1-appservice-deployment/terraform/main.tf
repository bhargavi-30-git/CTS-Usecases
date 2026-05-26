# Backend — stores Terraform state in Azure Storage Account
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-uc1-tf"
    storage_account_name = "stuc1tf"
    container_name       = "tfstate"
    key                  = "uc1.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

# Azure Container Registry
resource "azurerm_container_registry" "uc1" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = true
}

# App Service Plan (B1 — needed for Docker)
resource "azurerm_service_plan" "uc1" {
  name                = var.app_service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "B1"
}

# App Service (Docker container enabled)
resource "azurerm_linux_web_app" "uc1" {
  name                = var.app_service_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.uc1.id

  site_config {
    always_on = true
    application_stack {
      docker_image_name   = "${var.acr_name}.azurecr.io/avi-webapp:latest"
      docker_registry_url = "https://${var.acr_name}.azurecr.io"
      docker_registry_username = azurerm_container_registry.uc1.admin_username
      docker_registry_password = azurerm_container_registry.uc1.admin_password
    }
  }

  app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
    DOCKER_REGISTRY_SERVER_URL          = "https://${var.acr_name}.azurecr.io"
    DOCKER_REGISTRY_SERVER_USERNAME     = azurerm_container_registry.uc1.admin_username
    DOCKER_REGISTRY_SERVER_PASSWORD     = azurerm_container_registry.uc1.admin_password
  }
}