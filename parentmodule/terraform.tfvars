
resource_groups = {
  rg1 = {
    rg_location = "eastus"
    rg_name     = "preeti"
  }

}

vnet = {
  vnet1 = {
    rg_name       = "preeti"
    rg_loction    = "eastus"
    vnet_name     = "preetivnet"
    address_space = ["10.0.0.0/16"]
  }
}


subnet = {
  subnet1 = {
    subnet_name      = "mysubnet"
    rg_name          = "preeti"
    vnet_name        = "preetivnet"
    address_prefixes = ["10.0.1.0/24"]


  }
  subnet2 = {
    subnet_name      = "mysubnet2"
    rg_name          = "preeti"
    vnet_name        = "preetivnet"
    address_prefixes = ["10.0.2.0/24"]
  }
}

nic = {
  nic1 = {
    nic            = "mynci"
    rg_name        = "preeti"
    rg_location    = "eastus"
    ip_config_name = "myconfig"
    vnet_name      = "preetivnet"
    private_ip     = "Dynamic"
    subnet_name    = "mysubnet"
    pip_name       = "mypublic_ip1"
  }
  nic2 = {
    nic            = "mynci2"
    rg_name        = "preeti"
    rg_location    = "eastus"
    ip_config_name = "myconfig"
    vnet_name      = "preetivnet"
    private_ip     = "Dynamic"
    subnet_name    = "mysubnet2"
    pip_name       = "mypublic_ip2"
  }

}
pip = {
  pip1 = {
    pip_name          = "mypublic_ip"
    rg_location       = "eastus"
    rg_name           = "preeti"
    allocation_method = "Dynamic"
    sku               = "Standard"

  }
  pip2 = {
    pip_name          = "mypublic_ip2"
    rg_location       = "eastus"
    rg_name           = "preeti"
    allocation_method = "Dynamic"
    sku               = "Standard"
  }

}

vm = {
  vm = {
    vm_name        = "myvm"
    rg_name        = "preeti"
    rg_location    = "eastus"
    size           = "Standard_F2"
    admin_usr      = "adminuser"
    admin_password = "Adminuser@1234"
    nic            = "mynci"

  }

    vm1 = {
    vm_name        = "myvm2"
    rg_name        = "preeti"
    rg_location    = "eastus"
    size           = "Standard_F2"
    admin_usr      = "adminuser"
    admin_password = "Adminuser@1234"
    nic            = "mynci2"

  }
}

 
