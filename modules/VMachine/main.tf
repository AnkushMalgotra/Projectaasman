resource "azurerm_network_interface" "nic" {
    for_each = var.vm
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.r_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "example" {
    for_each = var.vm
  name                = each.value.vm_name
  resource_group_name = each.value.r_name
  location            = each.value.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.nic[each.key].id,
  ]
  
  admin_password = "Anlsh95@1234"
  disable_password_authentication = false
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}