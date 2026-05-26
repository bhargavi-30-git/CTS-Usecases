# ═══════════════════════════════════════════════════
# TERRAFORM — Usecase 5
# Remote state stored in Azure Storage
# Run manually from Cloud Shell ONCE
# ═══════════════════════════════════════════════════

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  # ── Remote Backend — state saved in Azure Storage ──
  backend "azurerm" {
    resource_group_name  = "uc5-state-rg"
    storage_account_name = "uc5tfstate234"
    container_name       = "tfstate"
    key                  = "uc5.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

# ── Resource Group ──────────────────────────────────
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# ── Virtual Network ─────────────────────────────────
resource "azurerm_virtual_network" "vnet" {
  name                = "uc5-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

# ── Subnet ──────────────────────────────────────────
resource "azurerm_subnet" "subnet" {
  name                 = "uc5-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

# ── Network Security Group ──────────────────────────
resource "azurerm_network_security_group" "nsg" {
  name                = "uc5-nsg"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  security_rule {
    name                       = "Allow-SSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "Allow-HTTP"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

# ── Public IP ───────────────────────────────────────
resource "azurerm_public_ip" "pip" {
  name                = "uc5-public-ip"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

# ── Network Interface ───────────────────────────────
resource "azurerm_network_interface" "nic" {
  name                = "uc5-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "uc5-ip-config"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip.id
  }
}

# ── NSG Association ─────────────────────────────────
resource "azurerm_network_interface_security_group_association" "nsg_assoc" {
  network_interface_id      = azurerm_network_interface.nic.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

# ── Linux Virtual Machine ───────────────────────────
resource "azurerm_linux_virtual_machine" "vm" {
  name                            = var.vm_name
  location                        = azurerm_resource_group.rg.location
  resource_group_name             = azurerm_resource_group.rg.name
  size                            = "Standard_B2ats_v2"
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]

  os_disk {
    name                 = "uc5-os-disk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }

  tags = {
    environment = "student"
    usecase     = "uc5-vm-cicd"
  }
}

# ── VM Extension — Auto Install Nginx ───────────────
resource "azurerm_virtual_machine_extension" "setup" {
  name                 = "uc5-setup-script"
  virtual_machine_id   = azurerm_linux_virtual_machine.vm.id
  publisher            = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.1"

  settings = <<SETTINGS
    {
      "commandToExecute": "apt-get update -y && apt-get install -y nginx zip && systemctl enable nginx && systemctl start nginx && chown -R ${var.admin_username}:${var.admin_username} /var/www/html && chmod -R 755 /var/www/html"
    }
  SETTINGS
}