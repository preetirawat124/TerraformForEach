module "resource" {
  source          = "../childmodule/azurerm_rg"
  resource_groups = var.resource_groups

}

module "vnet" {
  source     = "../childmodule/azurerm_vnet"
  vnet       = var.vnet
  depends_on = [module.resource]
}

module "subnet" {
  source     = "../childmodule/azurerm_subnet"
  subnet     = var.subnet
  depends_on = [module.vnet]

}
module "nic" {
  source     = "../childmodule/azurerm_nic"
  nic        = var.nic
  depends_on = [module.subnet, module.pip]

}


module "pip" {
  source     = "../childmodule/azurerm_pip"
  pip        = var.pip
  depends_on = [module.resource]

}

module "vm" {
  source     = "../childmodule/azurerm_vm"
  vm         = var.vm
  depends_on = [module.nic]

}