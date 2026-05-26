# Prints App Service URL after terraform apply
output "app_service_url" {
  description = "Live URL of the deployed web application"
  value       = "https://${azurerm_linux_web_app.uc1.default_hostname}"
}

# Prints ACR login server after terraform apply
output "acr_login_server" {
  description = "ACR login server URL for Docker push"
  value       = azurerm_container_registry.uc1.login_server
}

# Prints ACR admin username after terraform apply
output "acr_admin_username" {
  description = "ACR admin username for service connection"
  value       = azurerm_container_registry.uc1.admin_username
}

# Prints App Service name after terraform apply
output "app_service_name" {
  description = "Name of the App Service"
  value       = azurerm_linux_web_app.uc1.name
}

# Prints Resource Group name after terraform apply
output "resource_group_name" {
  description = "Name of the Resource Group"
  value       = azurerm_linux_web_app.uc1.resource_group_name
}