terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-uc4-terraform"
    storage_account_name = "stuc4tfstate"
    container_name       = "tfstate"
    key                  = "functionapp.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "rg-uc4-functionapp"
  location = "Central India"
}

# Storage Account
resource "azurerm_storage_account" "storage" {
  name                     = "stuc4functionapp"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# App Service Plan (Consumption)
resource "azurerm_service_plan" "plan" {
  name                = "asp-uc4-functionapp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Windows"
  sku_name            = "Y1"
}

# Function App
resource "azurerm_windows_function_app" "functionapp" {
  name                       = "uc4-functionapp-tf"
  resource_group_name        = azurerm_resource_group.rg.name
  location                   = azurerm_resource_group.rg.location
  storage_account_name       = azurerm_storage_account.storage.name
  storage_account_access_key = azurerm_storage_account.storage.primary_access_key
  service_plan_id            = azurerm_service_plan.plan.id

  site_config {
    application_stack {
      dotnet_version              = "v8.0"
      use_dotnet_isolated_runtime = true
    }
  }

  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME" = "dotnet-isolated"
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }
}