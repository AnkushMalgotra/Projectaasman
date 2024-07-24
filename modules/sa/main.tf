resource "azurerm_storage_account" "sa"{
      for_each = var.sa
     name = each.value.s_name
     resource_group_name = each.value.r_name
     location = each.value.location
     account_tier = "Standard"
     account_replication_type = "LRS"  
}
