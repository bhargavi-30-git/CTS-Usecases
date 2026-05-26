# ═══════════════════════════════════════════════════
# OUTPUTS — Usecase 5
# These values are printed after terraform apply
# ═══════════════════════════════════════════════════

output "resource_group_name" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.rg.name
}

output "vm_name" {
  description = "Name of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "vm_public_ip" {
  description = "Public IP — use this to SSH and access web app"
  value       = azurerm_public_ip.pip.ip_address
}

output "vm_username" {
  description = "VM admin username"
  value       = var.admin_username
}

output "nginx_url" {
  description = "URL to access the deployed web app"
  value       = "http://${azurerm_public_ip.pip.ip_address}"
}

output "ssh_command" {
  description = "Command to SSH into the VM"
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.pip.ip_address}"
}