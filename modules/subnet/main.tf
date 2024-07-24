resource "azurerm_subnet" "example" {
    for_each = var.subnet
  name                 = each.value.s_name
  resource_group_name  = each.value.r_name
  virtual_network_name =each.value.v_name
  address_prefixes     = each.value.address_prefixes
  }
