output "function_app_name" {
  value = azurerm_windows_function_app.functionapp.name
}

output "function_app_url" {
  value = azurerm_windows_function_app.functionapp.default_hostname
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}