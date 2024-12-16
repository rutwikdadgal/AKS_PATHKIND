resource "azurerm_virtual_network" "vnet01" {
  name                = var.virtual_network01_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = var.vnet01_address_space

  depends_on = [azurerm_resource_group.rg]
}

resource "azurerm_subnet" "akssubnet" {
  name                 = var.subnet1_vnet01_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet01.name
  address_prefixes     = var.subnet1_vnet01_address_prefix

  depends_on = [azurerm_resource_group.rg, azurerm_virtual_network.vnet01]
}


