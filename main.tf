provider "azurerm" {
  features {}

  subscription_id = "5b4bf1e9-1ee8-422a-ab88-3cef067ebd71"
  client_id       = "8b5cc0af-b956-49ca-9e22-8279af1a8adf"
  client_secret   = "Jkj7Q~cXC6dQqVjaMIN5lG6xOLM.RJnp.JeW2"
  tenant_id       = "25bd0e90-b75a-4f68-bfc6-fa683c39bc99"
}

resource "azurerm_resource_group" "rg" {
  name     = var.azurerm_resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.azurerm_virtual_network
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.azurerm_resource_group_name
}
resource "azurerm_subnet" "subnet01" {
  name                 = var.subnet01
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network
  address_prefixes     = var.address_prefixes01
}

resource "azurerm_subnet" "subnet02" {
  name                 = var.subnet02
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network
  address_prefixes     = var.address_prefixes02
}

resource "azurerm_subnet" "subnet03" {
  name                 = var.subnet03
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network
  address_prefixes     = var.address_prefixes03
}