resource "azurerm_virtual_network" "vnet" {
        for_each       = var.vnet
  name                = each.value.vnet_name
  location            = each.value.rg_loction
  resource_group_name = each.value.rg_name
  address_space       = each.value.address_space

}
