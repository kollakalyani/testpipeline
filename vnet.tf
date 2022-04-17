resource "azurerm_resource_group" "rg" {
  name     = "pipelinerg"
  location = "east asia"
}

resource "azurerm_virtual_network" "example" {
  name                = "vnetpipe"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["14.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "14.0.1.0/24"
  }

  tags = {
    environment = "Production"
  }
}