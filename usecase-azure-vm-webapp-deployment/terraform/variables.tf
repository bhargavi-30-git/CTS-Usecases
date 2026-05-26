# ═══════════════════════════════════════════════════
# VARIABLES — Usecase 5
# ═══════════════════════════════════════════════════

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "uc5-auto"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"
}

variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
  default     = "uc5-auto-vm"
}

variable "admin_username" {
  description = "VM admin username"
  type        = string
  default     = "bhargavi"
}

variable "admin_password" {
  description = "VM admin password"
  type        = string
  sensitive   = true
}