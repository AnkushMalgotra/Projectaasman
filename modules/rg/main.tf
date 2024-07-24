resource "azurerm_resource_group" "resource"{
     for_each = var.rg
     name = each.value.r_name
     location = each.value.location
}