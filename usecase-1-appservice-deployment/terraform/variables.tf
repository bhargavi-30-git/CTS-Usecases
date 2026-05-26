variable "resource_group_name" {
  description = "Name of the Resource Group"
  default     = "rg-uc1-tf"
}

variable "location" {
  description = "Azure region for all resources"
  default     = "East Asia"
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  default     = "acruc1tf"
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  default     = "asp-uc1-tf"
}

variable "app_service_name" {
  description = "Name of the App Service"
  default     = "avi-webapp-tf"
}

variable "storage_account_name" {
  description = "Name of the Storage Account for Terraform state"
  default     = "stuc1tf"
}

variable "storage_container_name" {
  description = "Name of the Blob Container for Terraform state"
  default     = "tfstate"
}