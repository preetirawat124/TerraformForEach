resource "azurerm_linux_virtual_machine" "vm" {
  for_each = var.vm
  name                = each.value.vm_name
  resource_group_name = each.value.rg_name
  location            = each.value.rg_location
  size                = each.value.size
  admin_username      = each.value.admin_usr
  admin_password = each.value.admin_password
  disable_password_authentication = false
  network_interface_ids = [
    data.azurerm_network_interface.nic[each.key].id
  ]

 
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
data "azurerm_network_interface" "nic" {
  for_each = var.vm
  name                = each.value.nic
  resource_group_name = each.value.rg_name
}

