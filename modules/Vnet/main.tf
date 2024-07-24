resource "azurerm_virtual_network" "vnet" {
    for_each = var.vnet
  name                = each.value.v_name
  location            = each.value.location
  resource_group_name = each.value.r_name
  address_space       = each.value.address_space
}