resource "azurerm_resource_group" "rg" {
  name     = "piprg1"
  location = "east asia"
}

resource "azurerm_virtual_network" "example" {
  name                = "vnetpip01"
  location            = "east asia"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["11.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "11.0.1.0/24"
  }

  tags = {
    environment = "Production"
  }
}
