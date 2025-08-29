resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.v_net_name
  address_prefixes     = var.add_prefixes
}