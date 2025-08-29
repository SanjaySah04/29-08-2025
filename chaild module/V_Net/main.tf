resource "azurerm_virtual_network" "virtual_network_block" {
  name                = var.v_net_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  address_space       = var.add_space
}