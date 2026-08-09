module "resource_group" {
  source = "../modules/Azurerm_resource_group"
  rgs    = var.rgs
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../modules/Azurerm_virtual_network"
  vnet       = var.vnet
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../modules/Azurerm_subnet"
  subnet     = var.subnet
}

