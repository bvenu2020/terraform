resource "azurerm_resource_group" "CIS" {
  name     = "var.rgname"
  location = "var.location"
}

resource "azurerm_network_security_group" "CIS_SG" {
  name                = "var.network_security_group"
  location            = var.location
  resource_group_name = var.rgname
}

resource "azurem_virtual_network" "CIS_NetWork" {
  name                = "var.virtual_network"
  location            = "var.location"
  resource_group_name = "var.rgname"
  address_space       = [ "var.vnet_cider_prefix" ]
 
resource "azurerm_subnet" "CIS_NetWork" {
  name                 = "var.azurerm_subnet"
  resource_group_name  = var.rgname
  virtual_network_name = var.virtual_network
  address_prefixes     = ["10.0.2.0/24"]
}

  tags = {
    environment = "Production"
  }

}

