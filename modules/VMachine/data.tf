data "azurerm_subnet" "subnet" {
    for_each = var.vm
  name                 = each.value.s_name
  virtual_network_name = each.value.v_name
  resource_group_name  = each.value.r_name
}