module "resource_group" {
  source = "../modules/Azurerm_resource_group"
  rgs    = var.rgs
}
module "Storage_account" {
  depends_on =[module.resource_group]
  source = "../modules/stg"
 stg  = var.stg
 location = var.location
 RG = var.RG
  account_tier = var.account_tier
account_replication_type =var.account_replication_type
}

