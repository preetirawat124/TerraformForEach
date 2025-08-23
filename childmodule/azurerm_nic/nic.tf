resource "azurerm_network_interface" "nic" {
  for_each = var.nic
  name                = each.value.nic
  location            = each.value.rg_location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = each.value.ip_config_name
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = each.value.private_ip
   public_ip_address_id = data.azurerm_public_ip.pip[each.key].id

  }
}




data "azurerm_subnet" "subnet" {
  for_each = var.nic
  name                 = each.value.subnet_name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.vnet_name
}

data "azurerm_public_ip" "pip" {
  for_each = var.nic
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
  
}